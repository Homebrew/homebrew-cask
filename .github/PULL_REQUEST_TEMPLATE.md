### Instructions

Delete the parts of this template that are not relevant (including these `Instructions`) and fill out the rest.  
If there’s a checkbox you can’t complete for any reason, that’s OK. Just explain in detail why you weren’t able to do so.  
*Note:* `{{cask_file}}` represents the cask file you’re submitting/editing.

### Checklist

- [ ] The commit message includes the cask’s name and version.
- [ ] `brew cask audit --download {{cask_file}}` is error-free.
- [ ] `brew cask style --fix {{cask_file}}` left no offenses.

Additionally, when **adding a new cask**:

- [ ] Checked there are no open [pull requests](https://github.com/caskroom/homebrew-cask/pulls) for the same cask.
- [ ] Checked there are no closed [issues](https://github.com/caskroom/homebrew-cask/issues) where that cask was already refused.
- [ ] When naming the cask, followed the [token reference](https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/token_reference.md).
- [ ] `brew cask install {{cask_file}}` worked successfully.
- [ ] `brew cask uninstall {{cask_file}}` worked successfully.
