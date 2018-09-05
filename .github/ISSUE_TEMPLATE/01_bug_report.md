---
name: Bug Report
about: Create a report to help us improve

---

#### General troubleshooting steps

- [ ] I have retried my command with `--force` and the issue is still present.
- [ ] I have checked the instructions for [reporting bugs](https://github.com/Homebrew/homebrew-cask#reporting-bugs).
- [ ] I made doubly sure this is not a [checksum does not match](https://github.com/Homebrew/homebrew-cask/blob/master/doc/reporting_bugs/a_cask_fails_to_install.md#checksum-does-not-match-error) error.
- [ ] I ran `brew update-reset && brew update` and retried my command.
- [ ] I ran `brew doctor`, fixed as many issues as possible and retried my command.
- [ ] I checked there are no [open issues](https://github.com/Homebrew/homebrew-cask/issues) for the same problem.
- [ ] I understand that [if I ignore these instructions, my issue may be closed without review](https://github.com/Homebrew/homebrew-cask/blob/master/doc/faq/closing_issues_without_review.md).

#### Description of issue

{{replace this}}

<!-- Please DO NOT delete the backticks. Only change the “{{replace this}}” text. -->

#### Command that failed

```
{{replace this}}
```

#### Output of command with `--force --verbose --debug`

```
{{replace this}}
```

#### Output of `brew cask doctor`

```
{{replace this}}
```

#### Output of `brew tap`

```
{{replace this}}
```
