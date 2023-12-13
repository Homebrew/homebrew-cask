**Important:** *Do not tick a checkbox if you haven’t performed its action.* Honesty is indispensable for a smooth review process.

_In the following questions `<cask>` is the token of the cask you're submitting._

After making any changes to a cask, existing or new, verify:

- [ ] The submission is for [a stable version](https://docs.brew.sh/Acceptable-Casks#stable-versions) or [documented exception](https://docs.brew.sh/Acceptable-Casks#but-there-is-no-stable-version).
- [ ] `brew style --fix <cask>` reports no offenses.

**If updating an existing cask**:

- [ ] `brew audit --cask --strict --online <cask>` is error-free.

**If adding a new cask**:

- [ ] Named the cask according to the [token reference](https://docs.brew.sh/Cask-Cookbook#token-reference).
- [ ] Checked the cask was not [already refused](https://github.com/Homebrew/homebrew-cask/search?q=is%3Aclosed&type=Issues).
- [ ] Checked the cask is submitted to [the correct repo](https://docs.brew.sh/Acceptable-Casks#finding-a-home-for-your-cask).
- [ ] `brew audit --cask --new <cask>` worked successfully.
- [ ] `brew install --cask <cask>` worked successfully.
- [ ] `brew uninstall --cask <cask>` worked successfully.
