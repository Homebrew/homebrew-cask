# Agent Instructions for homebrew-cask

This document helps coding agents produce high-quality PRs for Homebrew Cask contributions.

## Before Any PR

1. **Check for existing PRs** for the same cask: [open PRs](https://github.com/Homebrew/homebrew-cask/pulls)
2. **Check if previously refused**: [closed unmerged PRs](https://github.com/search?q=repo%3AHomebrew%2Fhomebrew-cask+is%3Aclosed+is%3Aunmerged+&type=pullrequests)

## Golden Rules

- **One cask per PR**, one intent per PR
- **Minimal diffs**—change only what's necessary
- **No drive-by formatting** or unrelated stanza churn
- **No verbose commentary**—keep PR descriptions short
- **No non-Homebrew caveats** in PR body or cask file
- **Use official sources** for download URLs
- **If unsure about policy** (notability, naming, livecheck), stop and ask before opening a PR

## Version Updates

Preferred method for version bumps:

```sh
brew bump --open-pr <cask>
```

This handles version/sha256 updates, commit message, and opens the PR automatically.

### Manual Version Updates

If manual editing is needed:

```sh
brew edit --cask <cask>
# Update version, url, sha256 as needed
# Do not add unrelated stanza changes
```

Commit message: `<cask> <version>` (e.g., `firefox 125.0`)

## Cask Fixes

For bug fixes or improvements to existing casks:

```sh
brew edit --cask <cask>
# Make only the required changes
```

Commit message: `<cask>: <description>` (e.g., `firefox: fix zap stanza`)

## New Casks

### Notability Requirements

New casks **will be rejected** if:

- App is too obscure (GitHub: <30 forks/watchers or <75 stars)
- No public presence beyond "just `brew install`"
- Unmaintained or has unpatched security vulnerabilities
- Requires SIP to be disabled
- Download requires login/registration (walled builds)
- No compiled versions available (use homebrew/core instead)
- Previously rejected for unfixable issues

See [Acceptable Casks](https://docs.brew.sh/Acceptable-Casks) for full criteria.

### Creating a New Cask

```sh
brew create --cask <url>
# Edit the generated cask
```

Commit message: `<cask> <version> (new cask)` (e.g., `myapp 1.0.0 (new cask)`)

### Required Elements

- **Token**: Follow the [token reference](https://docs.brew.sh/Cask-Cookbook#token-reference)—lowercase, hyphens, no version numbers
- **Required stanzas**: `version`, `sha256`, `url`, `name`, `desc`, `homepage`, and at least one artifact (`app`, `pkg`, etc.)
- **`verified:` parameter**: Required when `url` host differs from `homepage` host
- **`uninstall` stanza**: Required for `pkg` and `installer` artifacts
- **`zap` stanza**: Recommended for thorough cleanup (preference files, caches in `~/Library`)

## Required Validation

### For Existing Cask Changes

```sh
brew audit --cask --online <cask>
brew style --fix <cask>
brew install --cask <cask>    # or reinstall
brew uninstall --cask <cask>
```

### For New Casks

```sh
export HOMEBREW_NO_INSTALL_FROM_API=1
brew audit --cask --new <cask>
brew style --fix <cask>
brew install --cask <cask>
brew uninstall --cask <cask>
```

All checks MUST pass locally before opening a PR.

## PR Template Checklist

You MUST verify all items before submitting:

**For all cask changes:**

- [ ] Submission is for a [stable version](https://docs.brew.sh/Acceptable-Casks#stable-versions) or [documented exception](https://docs.brew.sh/Acceptable-Casks#but-there-is-no-stable-version)
- [ ] `brew audit --cask --online <cask>` is error-free
- [ ] `brew style --fix <cask>` reports no offenses

**Additionally, for new casks:**

- [ ] Named according to [token reference](https://docs.brew.sh/Cask-Cookbook#token-reference)
- [ ] Checked cask was not [already refused](https://github.com/search?q=repo%3AHomebrew%2Fhomebrew-cask+is%3Aclosed+is%3Aunmerged+&type=pullrequests)
- [ ] `brew audit --cask --new <cask>` worked successfully
- [ ] `HOMEBREW_NO_INSTALL_FROM_API=1 brew install --cask <cask>` worked successfully
- [ ] `brew uninstall --cask <cask>` worked successfully

**If AI-assisted:**

- [ ] Personally reviewed, tested, and verified all changes including `zap` stanza paths

## Commit Message Format

- Version update: `appname 1.2.3`
- New cask: `appname 1.2.3 (new cask)`
- Fix/change: `appname: <description>`
- First line MUST be 50 characters or less

## PR Hygiene

### MUST

- One cask change per PR
- Keep diffs minimal and focused
- Provide only essential context in PR description

### MUST NOT

- Batch unrelated cask changes
- Include formatting-only diffs
- Add verbose logs or AI analysis in PR body
- Add installation caveats unless the cask DSL requires it
- Include unrelated refactors or stanza reordering

## PR Description

Keep it minimal:

```
Built and tested locally on [macOS version].

[One sentence if not obvious from title.]
```

Do NOT include:

- Large command output or logs
- Lengthy explanations
- Non-Homebrew installation advice

## CI Failures

1. Reproduce failures locally with the same commands
2. Read error messages in "Files changed" tab annotations
3. Fix only the failing issue
4. Push incremental commits (do not squash after opening PR)
5. If stuck, comment describing what you've tried

## AI Disclosure

If AI assisted with the PR, check the AI checkbox in the PR template. Briefly describe:

- How AI was used
- What manual verification was performed (especially `zap` paths)

## References

- [Cask Cookbook](https://docs.brew.sh/Cask-Cookbook)
- [Acceptable Casks](https://docs.brew.sh/Acceptable-Casks)
- [Adding Software to Homebrew](https://docs.brew.sh/Adding-Software-to-Homebrew#casks)
- [CONTRIBUTING.md](CONTRIBUTING.md)
- [How to Open a PR](https://docs.brew.sh/How-To-Open-a-Homebrew-Pull-Request)
