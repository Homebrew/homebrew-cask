# CHANGELOG

## 0.18.3

Release Date: 2013-10-19

* __Features__
* __Fixes__
  - [#1168][] - support systems that have `ln` overridden with GNU version <3 [@wenbin1989][]
  - [#1181][] - fix a small bug that could stop the check link process <3 [@andizzle][]

[#1168]: https://github.com/phinze/homebrew-cask/issues/1168
[@wenbin1989]: https://github.com/wenbin1989
[#1181]: https://github.com/phinze/homebrew-cask/pull/1181
[@andizzle]: https://github.com/andizzle

* __Breaking Changes__

## 0.18.2

Release Date: 2013-10-07

* __Features__
* __Fixes__
  - [#981][] - properly handle underscores in URLs <3 [@sheerun][]
* __Breaking Changes__


[#981]: https://github.com/phinze/homebrew-cask/issues/981
[@sheerun]: https://github.com/sheerun

## 0.18.1

Release Date: 2013-10-07

* __Features__
  - adds `--prefpanedir=` option to link to a different location
* __Fixes__
* __Breaking Changes__

## 0.18.0 - Preference Pane Support

Release Date: 2013-10-07

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
