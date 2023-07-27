# How To Contribute

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

* [Updating a Cask](#updating-a-cask)
* [Getting Set Up To Contribute](#getting-set-up-to-contribute)
* [Adding a Cask](#adding-a-cask)
* [Style guide](#style-guide)
* [Reporting Bugs](README.md#reporting-bugs)


## Updating a Cask

Notice an application that's out-of-date in Homebrew Cask? In most cases, it's very simple to update it. We have a command that will take care of updating the Cask file and submitting a pull request to us:

```bash
brew bump --open-pr <outdated_cask>
```

You can also follow the steps in [Adding a Cask](https://docs.brew.sh/Adding-Software-to-Homebrew) for more complicated changes.


## Getting Set Up To Contribute

Follow the guide in [How to open a Homebrew pull request](https://docs.brew.sh/How-To-Open-a-Homebrew-Pull-Request#cask-related-pull-request).


## Adding a Cask

Notice an application that's not in Homebrew Cask yet? Make sure it's not yet in [Homebrew/cask-versions](https://github.com/Homebrew/homebrew-cask-versions) or [Homebrew/core](https://github.com/Homebrew/homebrew-core) (can be searched with `brew search`). Mac App Store apps can't be installed via Homebrew Cask, but check out [mas](https://github.com/mas-cli/mas) for an alternative.

With a bit of work, you can create a Cask for it. The document [Adding A Cask](https://docs.brew.sh/Adding-Software-to-Homebrew) will help you create, test, and submit a new Cask to us.


## Style guide

Some style guidelines:

* All Casks and code should be indented using two spaces (never tabs). When `brew style` contradicts this, `style` must be followed.
* There should not be any extraneous comments - the only comments that should be used are the ones explicitly defined in the [Cask Cookbook](https://docs.brew.sh/Cask-Cookbook).
* The stanza order and position of newlines is important to make things easier (See [Stanza order](https://docs.brew.sh/Cask-Cookbook#stanza-order)).
* Use string manipulations to improve the maintainability of your Cask (See [`version` methods](https://docs.brew.sh/Cask-Cookbook#version-methods)).
* Test your cask using `brew audit/style` (See [testing](https://docs.brew.sh/Adding-Software-to-Homebrew#testing-your-new-cask)).
* Make one Pull Request per Cask change.
* Do not squash commits after updating a Pull Request.
* Use descriptive commit messages - mention cask name and version/change (ie. `transmission 2.82`, `google-chrome: update zap`).
