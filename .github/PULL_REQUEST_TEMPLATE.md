<!-- Before submitting a pull request, please read the contributing guidelines: -->
<!-- https://docs.brew.sh/Contributing -->
<!-- Please note that we require humans to read and fill out this template. -->
<!-- Do NOT remove any of the boilerplate text unless instructed to do so. -->

- [x] The submission is for a [stable version](https://docs.brew.sh/Acceptable-Casks#we-dont-accept-pull-requests-for-pre-release-versions) or [documented exception](https://docs.brew.sh/Acceptable-Casks#but-there-are-exceptions-right).
- [x] `brew audit --cask --online cutecut-pro` is error-free.
- [x] `brew style --fix cutecut-pro` reports no offenses.

<!-- For new casks only: -->
- [x] The cask token matches the [token reference](https://docs.brew.sh/Cask-Cookbook#token-reference).
- [x] The `sha256` does not contain any checksum substitutions (e.g. `:no_check` unless upstream does not provide fixed checksums).
- [x] The cask does not contain any unversioned URLs.
- [x] The cask was submitted to the [well-known cask repo](https://github.com/Homebrew/homebrew-cask) or an [acceptable alternative repo](https://docs.brew.sh/Interesting-Taps-and-Forks).
- [x] The cask was not previously refused (check [closed pull requests](https://github.com/Homebrew/homebrew-cask/pulls?q=is%3Apr+is%3Aclosed)).
- [x] `brew audit --cask --new cutecut-pro` worked for you before submitting.
- [x] `brew install --cask cutecut-pro` worked for you before submitting.
- [x] `brew uninstall --cask cutecut-pro` worked for you before submitting.

<!-- If an LLM / AI tool was used to help write this pull request, please disclose it: -->
AI was used to help draft the cask syntax. I have reviewed the output manually, including the `zap` stanza paths, and verified the cask fields.

<!-- If there are any open issues that this pull request resolves, please include them here. -->
