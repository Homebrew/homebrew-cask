# CHANGELOG

## 0.17.2 & 0.17.3

- Bugfix releases addressing #1105

## 0.17.1

- Fix type on path

## 0.17.0

- fix download to track with upstream api change
- Remove .DS_Store files when uninstalling packages
- fix a few bugs around recent changes
- reverse default for SystemCommand's print option
- require tmpdir to fix container error
- pkg uninstall: support kernel extension unloading
- when uninstalling pkgs; sudo chmod before examining
- naked pkg - save files with spaces properly
- naked pkg support + major container refactor

## 0.16.2

- Fix variable in Formula

## 0.16.1
- homebrew made some changes (see #1015) that broke our integration; this bugfix release brings us back into parity with the mothership.

Thanks @billwanjohi for his work to fix this in #1017.

## 0.16.0
- Add ability to install a cask directly from a URL:
  `brew cask install http://example.com/casks/my-personal-app.rb`
- Fix overzealous cask create name matching

## 0.15.0
- Add `.pkg` install/uninstall support
