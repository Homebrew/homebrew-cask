**Important:** *Do not tick a checkbox if you haven’t performed its action.* Honesty is indispensable for a smooth review process.

_In the following questions `<cask>` is the token of the cask you're submitting._

After making any changes to a cask, existing or new, verify:

- [ ] The submission is for [a stable version](https://docs.brew.sh/Acceptable-Casks#stable-versions) or [documented exception](https://docs.brew.sh/Acceptable-Casks#but-there-is-no-stable-version).
- [ ] `brew audit --cask --online <cask>` is error-free.
- [ ] `brew style --fix <cask>` reports no offenses.

Additionally, **if adding a new cask**:

- [ ] Named the cask according to the [token reference](https://docs.brew.sh/Cask-Cookbook#token-reference).
- [ ] Checked the cask was not [already refused](https://github.com/search?q=repo%3AHomebrew%2Fhomebrew-cask+is%3Aclosed+is%3Aunmerged+&type=pullrequests) (add your cask's name to the end of the search field).
- [ ] `brew audit --cask --new <cask>` worked successfully.
- [ ] `HOMEBREW_NO_INSTALL_FROM_API=1 brew install --cask <cask>` worked successfully.
- [ ] `brew uninstall --cask <cask>` worked successfully.

---
