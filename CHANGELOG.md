# CHANGELOG

## 0.21.1

* __Features__
* __Fixes__
  - [#1882][] - Ensure QuickLook directory exists [@peeja][]
* __Breaking Changes__

## 0.21.0

* __Features__
  - [#1733][] - QuickLook plugin support <3 [@lgarron][]
* __Fixes__
* __Breaking Changes__

[#1733]: https://github.com/phinze/homebrew-cask/issues/1733
[@lgarron]: https://github.com/lgarron

## 0.20.1

* __Features__
* __Fixes__
  - [#1765][] - fix tapspath to work with non-standard homebrew location <3 [@njam][]
* __Breaking Changes__

[#1765]: https://github.com/phinze/homebrew-cask/issues/1765
[@njam]: https://github.com/njam

## 0.20.0

* __Features__
  - [#1417][] - brew cask list, when given args, list installed files
  - Guard against unspecified casks in the CLI <3 [@aah][]
  - `brew cask info` also reports cask caveats <3 [@linc01n][]
* __Fixes__
  - [#393][] - use non-zero exit code on error <3 [@aah][]
  - [#914][] - more robust plist parsing with better error handling
  - [#1035][] - use exact matching when loading a cask
  - [#1461][] - remove empty app dirs from caskroom on uninstall
* __Breaking Changes__
  - [#1436][] - new preferred sourceforge url style

[#1417]: https://github.com/phinze/homebrew-cask/issues/1417
[@aah]: https://github.com/aah
[@linc01n]: https://github.com/linc01n

[#393]: https://github.com/phinze/homebrew-cask/issues/393
[#914]: https://github.com/phinze/homebrew-cask/issues/914
[#1035]: https://github.com/phinze/homebrew-cask/issues/1035
[#1461]: https://github.com/phinze/homebrew-cask/issues/1461

[#1436]: https://github.com/phinze/homebrew-cask/issues/1436


## 0.19.4

* __Features__
* __Fixes__
  - [#1274][] - fix permissions problems on certain pkg uninstalls
* __Breaking Changes__

[#1274]: https://github.com/phinze/homebrew-cask/issues/1374

## 0.19.3

* __Features__
* __Fixes__
  - [#1274][] - various fixes to prevent evil from happening during certain pkg uninstall processes
* __Breaking Changes__

[#1274]: https://github.com/phinze/homebrew-cask/issues/1247

## 0.19.2

* __Features__
* __Fixes__
  - fix bug introduced in `0.19.1` where a double-install would result in a silent uninstall of a cask
* __Breaking Changes__

## 0.19.1

* __Features__
* __Fixes__
  - [#954][] - preserve environment when running `sudo` <3 [@kdeldycke][]
  - [#1247][] - clean up on install failure; raise an explicit error when a command fail for better feedback
* __Breaking Changes__

[#954]: https://github.com/phinze/homebrew-cask/issues/954
[@kdeldycke]: https://github.com/phinze/homebrew-cask/commit/f787afdc26cb5a5b81c2d6142d93c77b7aa5d28e
[#1247]: https://github.com/phinze/homebrew-cask/issues/1247

## 0.19.0

* __Features__
  - [#602][] - support for nested containers
* __Fixes__
* __Breaking Changes__

[#602]: https://github.com/phinze/homebrew-cask/issues/602


## 0.18.3

* __Features__
* __Fixes__
  - [#1168][] - support systems that have `ln` overridden with GNU version <3 [@wenbin1989][]
  - [#1181][] - fix a small bug that could stop the check link process <3 [@andizzle][]
* __Breaking Changes__

[#1168]: https://github.com/phinze/homebrew-cask/issues/1168
[@wenbin1989]: https://github.com/wenbin1989
[#1181]: https://github.com/phinze/homebrew-cask/pull/1181
[@andizzle]: https://github.com/andizzle

## 0.18.2

* __Features__
* __Fixes__
  - [#981][] - properly handle underscores in URLs <3 [@sheerun][]
* __Breaking Changes__

[#981]: https://github.com/phinze/homebrew-cask/issues/981
[@sheerun]: https://github.com/sheerun

## 0.18.1

* __Features__
  - adds `--prefpanedir=` option to link to a different location
* __Fixes__
* __Breaking Changes__

## 0.18.0 - Preference Pane Support

* __Features__
  - adds support for Preference Pane linking
    - adds `prefpane` keyword in Cask dsl indicates a prefpane to by symlinked to `~/Library/PreferencePanes`
  - internal refactor to `Artifact` system; opens up easier implementation path to supporting additional things like widgets
* __Fixes__
* __Breaking Changes__
  - removes old `linkapps` / `unlinkapps` commands
  - `install` and `link` keywords now must reference the relative path to their artifact

## 0.17.{2,3}

* __Features__
* __Fixes__
  - Bugfixes addressing ([#1105](https://github.com/phinze/homebrew-cask/issues/1105))
* __Breaking Changes__

## 0.17.1

* __Features__
* __Fixes__
  - Fixes typo on `Tar` container, preventing tar-based Casks from being installed. ([#1083](https://github.com/phinze/homebrew-cask/issues/1083))
* __Breaking Changes__

## 0.17.0

* __Features__
  - naked pkg support
  - major internal `Container` refactor
  - Remove .DS_Store files when uninstalling packages
  - pkg uninstall: support kernel extension unloading
* __Fixes__
  - fix a few bugs around recent changes
  - require tmpdir to fix container error
  - when uninstalling pkgs; sudo chmod before examining
* __Breaking Changes__

## 0.16.{1,2}

* __Features__
* __Fixes__
  - homebrew made some changes ([#1015](https://github.com/phinze/homebrew-cask/issues/1015)) that broke our integration; this bugfix release brings us back into parity with the mothership.
* __Breaking Changes__

Thanks @billwanjohi for his work to fix this.

## 0.16.0

* __Features__
  - Adds ability to install a cask directly from a URL:
    `brew cask install http://example.com/casks/my-personal-app.rb`
* __Fixes__
  - Fixes overzealous cask create name matching
* __Breaking Changes__

## 0.15.0

* __Features__
  - Adds `.pkg` install/uninstall support
* __Fixes__
* __Breaking Changes__
