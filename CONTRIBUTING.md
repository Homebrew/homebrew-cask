# How To Contribute

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

* [Updating a Cask](#updating-a-cask)
* [Getting Set Up To Contribute](#getting-set-up-to-contribute)
* [Adding a Cask](#adding-a-cask)
* [Style Guide](#style-guide)
* [Reporting Bugs](README.md#reporting-bugs)

## Updating a Cask

Notice an application that's out-of-date in Homebrew Cask? In most cases, it's very simple to update it. We have a command that will take care of updating the cask file and submitting a pull request to us:

```bash
brew bump --open-pr <outdated_cask>
```

You can also follow the steps in the documentation on [adding a cask](https://docs.brew.sh/Adding-Software-to-Homebrew#casks) for more complicated changes.

## Getting Set Up To Contribute

Follow the guide in [How to Open a Homebrew Pull Request](https://docs.brew.sh/How-To-Open-a-Homebrew-Pull-Request#cask-related-pull-request).

## Adding a Cask

Notice an application that's not in Homebrew Cask yet? Make sure it's also not in [homebrew/core](https://github.com/Homebrew/homebrew-core) (can be searched with `brew search`). Mac App Store apps can't be installed via Homebrew Cask, but check out [mas](https://github.com/mas-cli/mas) for an alternative.

With a bit of work, you can create a cask for it. The documentation on [adding a cask](https://docs.brew.sh/Adding-Software-to-Homebrew#casks) will help you create, test, and submit a new cask to us.

## Style Guide

Some style guidelines:

* All casks and code should be indented using two spaces (never tabs). When `brew style` contradicts this, `style` must be followed.
* There should not be any extraneous comments - the only comments that should be used are the ones explicitly defined in the [Cask Cookbook](https://docs.brew.sh/Cask-Cookbook).
* The stanza order and position of newlines is important to make things easier (see [Stanza order](https://docs.brew.sh/Cask-Cookbook#stanza-order)).
* Use string manipulations to improve the maintainability of your cask (see [`version` methods](https://docs.brew.sh/Cask-Cookbook#version-methods)).
* Test your cask using `brew audit` and `brew style` (see the documentation on [testing and auditing](https://docs.brew.sh/Adding-Software-to-Homebrew#testing-and-auditing-the-cask)).
* Make one pull request per cask change.
* Do not squash commits after updating a pull request.
* Use descriptive commit messages - mention cask name and version/change (ie. `transmission 2.82`, `google-chrome: update zap`).
