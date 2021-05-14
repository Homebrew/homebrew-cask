**Important:** *Do not tick a checkbox if you haven’t performed its action.* Honesty is indispensable for a smooth review process.

After making all changes to a cask, verify:

- [ ] The submission is for [a stable version](https://docs.brew.sh/Acceptable-Casks#stable-versions) or [documented exception](https://docs.brew.sh/Acceptable-Casks#but-there-is-no-stable-version).
- [ ] `brew audit --cask {{cask_file}}` is error-free.
- [ ] `brew style --fix {{cask_file}}` reports no offenses.

Additionally, **if adding a new cask**:

- [ ] Named the cask according to the [token reference](https://docs.brew.sh/Cask-Cookbook#token-reference).
- [ ] Checked the cask was not [already refused](https://github.com/Homebrew/homebrew-cask/search?q=is%3Aclosed&type=Issues).
- [ ] Checked the cask is submitted to [the correct repo](https://github.com/Homebrew/homebrew-cask/blob/master/doc/development/adding_a_cask.md#finding-a-home-for-your-cask).
- [ ] `brew audit --new-cask {{cask_file}}` worked successfully.
- [ ] `brew install --cask {{cask_file}}` worked successfully.
- [ ] `brew uninstall --cask {{cask_file}}` worked successfully.
