<!-- If there’s a checkbox you can’t complete for any reason, that's okay, just explain in detail why you weren’t able to do so. -->

After making all changes to the cask:

- [ ] `brew cask audit --download {{cask_file}}` is error-free.
- [ ] `brew cask style --fix {{cask_file}}` reports no offenses.
- [ ] The commit message includes the cask’s name and version.

Additionally, if **updating only the `sha256`**:

- [ ] I verified this change is legitimate [<sup>How do I do that?</sup>][version-checksum] and **am providing confirmation below**:

Additionally, if **adding a new cask**:

- [ ] Named the cask according to the [token reference].
- [ ] `brew cask install {{cask_file}}` worked successfully.
- [ ] `brew cask uninstall {{cask_file}}` worked successfully.
- [ ] Checked there are no [open pull requests] for the same cask.
- [ ] Checked the cask was not already refused in [closed issues].
- [ ] Checked the cask is submitted to [the correct repo].

[token reference]: https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/token_reference.md
[open pull requests]: https://github.com/caskroom/homebrew-cask/pulls
[closed issues]: https://github.com/caskroom/homebrew-cask/issues?q=is%3Aissue+is%3Aclosed
[the correct repo]: https://github.com/caskroom/homebrew-cask/blob/master/doc/development/adding_a_cask.md#finding-a-home-for-your-cask
[version-checksum]: https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/sha256.md#updating-the-sha256
