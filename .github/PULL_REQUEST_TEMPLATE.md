**Important:** *Do not tick a checkbox if you haven’t performed its action.* Honesty is indispensable for a smooth review process.

After making all changes to a cask, verify:

- [ ] `brew cask audit --download {{cask_file}}` is error-free.
- [ ] `brew cask style --fix {{cask_file}}` reports no offenses.
- [ ] There are no [open pull requests](https://github.com/Homebrew/homebrew-cask/pulls) for the same update.
- [ ] The submission is for [a stable version](https://github.com/Homebrew/homebrew-cask/blob/master/doc/development/adding_a_cask.md#stable-versions) or [documented exception](https://github.com/Homebrew/homebrew-cask/blob/master/doc/development/adding_a_cask.md#but-there-is-no-stable-version).

Additionally, **if adding a new cask**:

- [ ] Named the cask according to the [token reference](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/token_reference.md).
- [ ] `brew cask audit --new-cask {{cask_file}}` worked successfully.
- [ ] `brew cask install {{cask_file}}` worked successfully.
- [ ] `brew cask uninstall {{cask_file}}` worked successfully.
- [ ] Checked the cask was not [already refused](https://github.com/Homebrew/homebrew-cask/search?q=is%3Aclosed&type=Issues).
- [ ] Checked the cask is submitted to [the correct repo](https://github.com/Homebrew/homebrew-cask/blob/master/doc/development/adding_a_cask.md#finding-a-home-for-your-cask).
