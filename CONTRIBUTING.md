# How To Contribute

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

* [Getting Set Up To Contribute](#getting-set-up-to-contribute)
* [Updating a Cask](#updating-a-cask)
* [Adding a Cask](#adding-a-cask)
* [Style guide](#style-guide)
* [Reporting Bugs](README.md#reporting-bugs)

## Getting Set Up To Contribute

1. Fork the repository in GitHub with the `Fork` button.

2. Add your GitHub fork as a remote for your homebrew-cask Tap:

```bash
$ github_user='<my-github-username>'
$ cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
$ git remote add "$github_user" "https://github.com/$github_user/homebrew-cask"
```

## Updating a Cask

Notice an application that's out-of-date in Homebrew-Cask? In most cases, it's very simple to update it. We have a [script](https://github.com/vitorgalvao/tiny-scripts/blob/master/cask-repair) that will ask for the new version number, and take care of updating the Cask file and submitting a pull request to us:

```bash
# install and setup script - only needed once
brew install vitorgalvao/tiny-scripts/cask-repair
cask-repair --help

# use to update <outdated_cask>
outdated_cask='<the-cask-i-want-to-update>'
cd "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/Casks"
cask-repair --pull origin --push $github_user $outdated_cask
```

If there is a more complicated change, or there is a case where `cask-repair` fails, you can also follow the steps in [Adding a Cask](doc/development/adding_a_cask.md) to do the same thing manually.

## Adding a Cask

Notice an application that's not in Homebrew-Cask yet? Make sure it's not yet in [Homebrew-Versions](https://github.com/caskroom/homebrew-versions) (can be searched from the Github repository page) or [Homebrew](https://github.com/Homebrew/homebrew) (can be searched with `brew search`).

With a bit of work, you can create a Cask for it. [This document](doc/development/adding_a_cask.md) will walk you through creating a new Cask, testing it, and submitting it to us.


## Style guide

Some style guidelines:
    
* All Casks and code should be indented using two spaces (never tabs)
* There should not be any extraneous comments - the only comments that should be used are the ones explicitly defined in the [Cask Language Reference](doc/cask_language_reference)
* The stanza order and position of newlines is important to make things easier (See [Stanza order](doc/cask_language_reference/#stanza-order))
* Use string manipulations to improve the maintainability of your Cask (See [`version` methods](doc/cask_language_reference/stanzas/version.md#version-methods))
* Test your cask using `brew cask audit/style` (See [testing](doc/development/adding_a_cask.md#testing-your-new-cask))
* Make one Pull Request per Cask change
* Squash commits after updating a Pull Request
* Use descriptive commit messages - mention app name and version (ie. `Upgrade Transmission.app to v2.82`)
