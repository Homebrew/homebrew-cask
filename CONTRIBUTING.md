# How To Contribute

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

* [Updating a Cask](#updating-a-cask)
* [Getting Set Up To Contribute](#getting-set-up-to-contribute)
* [Adding a Cask](#adding-a-cask)
* [Style guide](#style-guide)
* [Reporting Bugs](README.md#reporting-bugs)


## Updating a Cask

Notice an application that's out-of-date in Homebrew Cask? In most cases, it's very simple to update it. We have a command that will accept a new version number and take care of updating the Cask file and submitting a pull request to us:

```bash
brew bump-cask-pr --version <new_version> <outdated_cask>
```

You can also follow the steps in [Adding a Cask](https://docs.brew.sh/Adding-Software-to-Homebrew) for more complicated changes.


## Getting Set Up To Contribute

For manual updates, you'll need to fork the repository and add your copy as a remote (can also be done with `hub fork`).

1: Fork the repository in GitHub with the `Fork` button.

2: If you have not already done so, add your GitHub fork as a remote for your homebrew-cask Tap:

```bash
$ github_user='<my-github-username>'
$ cd "$(brew --repository)"/Library/Taps/homebrew/homebrew-cask
$ git remote add "${github_user}" "https://github.com/${github_user}/homebrew-cask"
```

3: If you have already added your GitHub fork as a remote for your homebrew-cask Tap, ensure your fork is [up-to-date](https://help.github.com/articles/merging-an-upstream-repository-into-your-fork/).

4: Switch to a new branch (ie. `new-feature`), and work from there: `git checkout -b new-feature`.


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
* Use descriptive commit messages - mention app name and version (ie. `Upgrade Transmission.app to v2.82`).
