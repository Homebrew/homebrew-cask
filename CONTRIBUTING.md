# How To Contribute

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

* [Updating a Cask](#updating-a-cask)
* [Getting Set Up To Contribute](#getting-set-up-to-contribute)
* [Adding a Cask](#adding-a-cask)
* [Style guide](#style-guide)
* [Reporting Bugs](README.md#reporting-bugs)


## Updating a Cask

Notice an application that's out-of-date in Homebrew-Cask? In most cases, it's very simple to update it. We have a [script](https://github.com/vitorgalvao/tiny-scripts/blob/master/cask-repair) that will ask for the new version number, and take care of updating the Cask file and submitting a pull request to us:

```bash
# install and setup script - only needed once
brew install vitorgalvao/tiny-scripts/cask-repair
cask-repair --help

# use to update <outdated_cask>
cask-repair <outdated_cask>
```

If there is a more complicated change, or there is a case where `cask-repair` fails (for example, where a Cask uses a [`url do` block](https://github.com/Homebrew/homebrew-cask/blob/60531a2812005dd5f17dc92f3ce7419af3c5d019/Casks/audacity.rb#L5#L15) or the [`language` stanza](https://github.com/Homebrew/homebrew-cask/blob/306b8fbd9502036f1ca742f70c569d8677b62403/Casks/firefox.rb#L4L74)), you can also follow the steps in [Adding a Cask](doc/development/adding_a_cask.md) to do the same thing manually. Remember to update the `version` and `shasum` values, as well as the appcast [`checkpoint`](doc/cask_language_reference/stanzas/appcast.md), if there is one.


## Getting Set Up To Contribute

For manual updates, you'll need to fork the repository and add your copy as a remote (can also be done with `hub fork`).

1: Fork the repository in GitHub with the `Fork` button.

2: If you have not already done so, add your GitHub fork as a remote for your homebrew-cask Tap:

```bash
$ github_user='<my-github-username>'
$ cd "$(brew --repository)"/Library/Taps/Homebrew/homebrew-cask
$ git remote add "${github_user}" "https://github.com/${github_user}/homebrew-cask"
```

3: If you have already added your GitHub fork as a remote for your homebrew-cask Tap, ensure your fork is [up-to-date](https://help.github.com/articles/merging-an-upstream-repository-into-your-fork/).

4: Switch to a new branch (ie. `new-feature`), and work from there: `git checkout -b new-feature`.


## Adding a Cask

Notice an application that's not in Homebrew-Cask yet? Make sure it's not yet in [Caskroom/versions](https://github.com/Homebrew/homebrew-cask-versions) or [Homebrew/core](https://github.com/Homebrew/homebrew-core) (can be searched with `brew search`). Mac App Store apps can't be installed via Homebrew-Cask, but check out [mas](https://github.com/argon/mas) for an alternative.

With a bit of work, you can create a Cask for it. [This document](doc/development/adding_a_cask.md) will walk you through creating a new Cask, testing it, and submitting it to us.


## Style guide

Some style guidelines:

* All Casks and code should be indented using two spaces (never tabs). When `brew cask style` contradicts this, `style` must be followed.
* There should not be any extraneous comments - the only comments that should be used are the ones explicitly defined in the [Cask Language Reference](doc/cask_language_reference).
* The stanza order and position of newlines is important to make things easier (See [Stanza order](doc/cask_language_reference/#stanza-order)).
* Use string manipulations to improve the maintainability of your Cask (See [`version` methods](doc/cask_language_reference/stanzas/version.md#version-methods)).
* Test your cask using `brew cask audit/style` (See [testing](doc/development/adding_a_cask.md#testing-your-new-cask)).
* Make one Pull Request per Cask change.
* Do not squash commits after updating a Pull Request.
* Use descriptive commit messages - mention app name and version (ie. `Upgrade Transmission.app to v2.82`).
