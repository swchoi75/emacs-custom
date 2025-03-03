(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(use-package python-black
  :ensure t
  :bind (("C-c b" . python-black-buffer)))

(use-package pyvenv
  :ensure t
  :config
  (pyvenv-mode 1))

(use-package anaconda-mode
  :ensure t
  :bind (("C-c C-x" . next-error))
  :config
  (require 'pyvenv)
  (add-hook 'python-mode-hook 'anaconda-mode))

(use-package company-anaconda
  :ensure t
  :config
  (eval-after-load "company"
   '(add-to-list 'company-backends '(company-anaconda :with company-capf))))

(use-package highlight-indent-guides
  :ensure t
  :config
  (add-hook 'python-mode-hook 'highlight-indent-guides-mode)
  (setq highlight-indent-guides-method 'character))


(setq python-shell-interpreter "~/.virtualenvs/py312/bin/ipython")

(set-language-environment "UTF-8")
(setq use-short-answers t)

(require 'recentf)
(recentf-mode 1) 
