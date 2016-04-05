### Instructions

- Delete every part of this placeholder text irrelevant to your submission, including this `Instructions` section.
- If [using `cask-repair`](https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md#updating-a-cask), checks are performed automatically and this template won’t show.
- `{{cask_file}}` is used a placeholder to the actual cask you’re submitting/editing (if applicable).
- If there’s a checkbox you can’t complete for any reason, that’s OK. Just explain in detail why you weren’t able to do so.

### Changes to a cask
#### Editing an existing cask

- [ ] Commit message includes cask’s name (and new version, if applicable).
- [ ] `brew cask audit --download {{cask_file}}` is error-free.
- [ ] `brew cask style --fix {{cask_file}}` left no offenses.

#### Adding a new cask

- [ ] Checked there aren’t open [pull requests](https://github.com/caskroom/homebrew-cask/pulls) for the same cask.
- [ ] Checked there aren’t closed [issues](https://github.com/caskroom/homebrew-cask/issues) where that cask was already refused.
- [ ] When naming the cask, followed the [token reference](https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/token_reference.md).
- [ ] Commit message includes cask’s name.
- [ ] `brew cask audit --download {{cask_file}}` is error-free.
- [ ] `brew cask style --fix {{cask_file}}` left no offenses.
- [ ] `brew cask install {{cask_file}}` worked successfully.
- [ ] `brew cask uninstall {{cask_file}}` worked successfully.

### Changes to the core

- [ ] Followed [hacking.md](https://github.com/caskroom/homebrew-cask/blob/master/doc/development/hacking.md).
