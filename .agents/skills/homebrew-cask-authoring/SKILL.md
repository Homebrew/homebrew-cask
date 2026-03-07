---
name: homebrew-cask-authoring
description: Create, update, validate, and submit Homebrew Casks. Use when the user mentions Homebrew cask/cask, Homebrew/homebrew-cask, adding a new cask, updating a cask, cask token naming, sha256, url verified:, livecheck, zap/uninstall, or when asked to run brew style/audit for a cask.
---

# Homebrew Cask Authoring

Author and maintain Homebrew Casks with correct token naming, stanzas, audit/style compliance, and local install testing.

## Operating rules

- Prefer the official Homebrew documentation (Cask Cookbook, Acceptable Casks) when uncertain.
- Keep casks minimal: only add stanzas that are required for correct install/uninstall/cleanup.
- Avoid destructive system changes unless explicitly requested; call out any `rm`/tap changes before suggesting them.
- When testing local casks, ensure Homebrew reads from the local file (not the API).

## Quick intake (ask these first)

Collect:
- App name (exact `.app` bundle name)
- Homepage (official)
- Download URL(s) (DMG/ZIP/PKG) and whether they differ by arch
- Version scheme (single version? per-arch?)
- Install artifact type (`app`, `pkg`, `suite`, etc.)
- Uninstall requirements (pkgutil ids, launch agents, kernel extensions)
- Desired cleanup (zap paths)

If any of these are unknown, propose a short plan to discover them.

## Pre-flight checks (before writing the cask)

Before investing effort in a new cask, verify:

1. **Notability**: The app must have meaningful public presence. GitHub projects with <30 forks/watchers or <75 stars are likely to be rejected. See [Acceptable Casks](https://docs.brew.sh/Acceptable-Casks).
2. **Repo age**: GitHub repos less than 30 days old cause a hard `brew audit --new` failure. Wait until the repo is old enough.
3. **Previously refused**: Search [closed unmerged PRs](https://github.com/search?q=repo%3AHomebrew%2Fhomebrew-cask+is%3Aclosed+is%3Aunmerged+&type=pullrequests) for the token. If previously rejected for unfixable reasons, do not re-submit.
4. **Existing PRs**: Check [open PRs](https://github.com/Homebrew/homebrew-cask/pulls) to avoid duplicating work.

## Workflow: create or update a cask

### 1) Choose the token

- Start from the `.app` bundle name.
- Remove `.app` and common suffixes: "App", "for macOS", version numbers.
- Remove "Mac" unless it distinguishes the product (e.g., "WinZip Mac" vs "WinZip").
- Remove "Desktop" only when it's a generic suffix, **not** when it's intrinsic to the product name. Keep it for products branded as "X Desktop" (e.g., `Docker Desktop` → `docker-desktop`). When in doubt, keep "Desktop".
- Downcase; replace spaces/underscores with hyphens.
- Remove non-alphanumerics except hyphens.
- Use `@beta`, `@nightly`, or `@<major>` for variants.

Confirm the token before writing the file.

### 2) Draft a minimal cask

Use this canonical structure:

```ruby
cask "token" do
  version "1.2.3"
  sha256 "..."

  url "https://example.com/app-#{version}.dmg"
  name "Official App Name"
  desc "Short one-line description"
  homepage "https://example.com"

  app "AppName.app"
end
```

Rules of thumb:
- Prefer `https` URLs.
- Add `verified:` when download host domain differs from `homepage` domain.
- Keep `desc` factual and concise (no marketing).

### 3) Handle architecture (if needed)

If URLs and/or sha256 differ by CPU:
- Use `arch` + `sha256 arm: ..., intel: ...` when versions match.
- Use `on_arm` / `on_intel` blocks when versions differ.

### 4) Add uninstall/zap stanzas

- **`uninstall`**: Required for `pkg` and `installer` artifacts. Include `pkgutil:` identifiers, launch agents, etc.
- **`zap`**: Recommended for thorough cleanup (support dirs, preferences, caches) but not enforced by `brew audit`. Reviewers expect it for new casks — verify paths are accurate.
- **`depends_on`**: Optional. Only add when genuinely needed (e.g., specific macOS version, another cask dependency).

### 5) Validate and test locally

Run, in this order:

```bash
brew style --fix <token>
brew audit --cask --online <token>
```

For new casks also run:

```bash
brew audit --cask --new <token>
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --cask <token>
brew uninstall --cask <token>
```

**Important notes:**
- Always install/uninstall by **token name**, not file path. Running `brew install ./Casks/t/token.rb` will fail when using a tap symlink — use `brew install --cask token` instead.
- `HOMEBREW_NO_INSTALL_FROM_API=1` forces Homebrew to use your local cask file rather than the API.
- `brew audit --cask --new` checks GitHub repo age (must be >30 days) and notability — if the repo is too new, this will fail regardless of cask quality.

If install fails:
- Re-check URL reachability, `sha256`, and artifact name.
- Re-run with verbosity: `brew install --cask --verbose <token>`.

### 6) PR hygiene

Before suggesting submission:
- Ensure `brew style` and all relevant `brew audit` commands pass.
- For new casks, check the token has not been previously refused/unmerged.
- One cask change per PR, minimal diffs, no drive-by formatting.
- Target the `main` branch (not `master`).

Commit message format (first line <=50 chars):
- New cask: `token version (new cask)`
- Version update: `token version`
- Fix/change: `token: description`

### 7) AI disclosure

The PR template includes an AI disclosure section. If AI assisted with the PR:
- Check the AI checkbox in the template.
- Briefly describe how AI was used.
- Confirm manual verification was performed, especially for `zap` stanza paths.

## Local development patterns

If the user is editing `Homebrew/homebrew-cask` locally and wants Homebrew to execute their working copy, use a tap symlink workflow.

Read the full end-to-end checklist here:
- `references/homebrew-cask-contribution-workflow.md`
