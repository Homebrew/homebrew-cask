# Homebrew Cask Contribution Workflow

A complete guide for contributing casks to Homebrew, covering local testing, validation, and submission.

## Prerequisites

- Homebrew installed
- Git configured
- Forked `Homebrew/homebrew-cask` repository on GitHub

## Setup: Link Your Local Repository

### Initial Setup

If you have the homebrew-cask repository checked out locally, make Homebrew use your working copy for testing:

```bash
# 1. Untap the official cask tap
brew untap homebrew/cask

# 2. Symlink your git checkout to Homebrew's tap location
ln -s ~/path/to/your/homebrew-cask $(brew --repository)/Library/Taps/homebrew/homebrew-cask

# Verify it worked
ls -la $(brew --repository)/Library/Taps/homebrew/
```

Now any changes you make in your git repo are immediately live for Homebrew commands.

### Restore Official Tap (After Testing)

```bash
# Remove your symlink
rm $(brew --repository)/Library/Taps/homebrew/homebrew-cask

# Re-add official tap
brew tap homebrew/cask
```

## Creating a New Cask

### Pre-flight Checks

Before creating a new cask, verify the app meets Homebrew's acceptance criteria:

1. **Notability**: GitHub projects with <30 forks/watchers or <75 stars are likely rejected. The app must have meaningful public presence beyond "just `brew install`". See [Acceptable Casks](https://docs.brew.sh/Acceptable-Casks).
2. **Repo age**: GitHub repos less than 30 days old cause a hard `brew audit --new` failure.
3. **Previously refused**: Search [closed unmerged PRs](https://github.com/search?q=repo%3AHomebrew%2Fhomebrew-cask+is%3Aclosed+is%3Aunmerged+&type=pullrequests) for the token.
4. **Existing PRs**: Check [open PRs](https://github.com/Homebrew/homebrew-cask/pulls) to avoid duplicates.

### 1. Determine the Token

The token is the unique identifier for your cask. Follow these rules:

**From app name to token:**

- Start with app bundle name (e.g., `Google Chrome.app`)
- Remove `.app` extension
- Remove suffixes: "App", version numbers, "for macOS"
- Remove "Mac" unless it distinguishes the product
- Remove "Desktop" only when it's a generic suffix — **keep it** when intrinsic to the product name (e.g., `Docker Desktop.app` → `docker-desktop`). When in doubt, keep "Desktop".
- Convert to lowercase
- Replace spaces/underscores with hyphens
- Remove non-alphanumeric characters (except hyphens)

**Examples:**

- `Google Chrome.app` → `google-chrome`
- `VLC Media Player.app` → `vlc`
- `Sublime Text 2.app` → `sublime-text`
- `Docker Desktop.app` → `docker-desktop`

**Special cases:**

- Beta/nightly: `app-name@beta`, `app-name@nightly`
- Version-specific: `app-name@5`

### 2. Create the Cask File

```bash
cd ~/path/to/your/homebrew-cask/Casks

# Determine the subdirectory (first letter/number of token)
# For token "my-app", create in: m/my-app.rb
# For token "1password", create in: 1/1password.rb

# Create the cask file
vim <first-char>/<token>.rb
```

### 3. Write the Cask Definition

**Required stanzas** (in canonical order):

```ruby
cask "token-name" do
  version "1.2.3"
  sha256 "abc123..." # Get with: shasum -a 256 <downloaded-file>

  url "https://example.com/app-#{version}.dmg"
  name "Official App Name"
  desc "Brief one-line description of what it does"
  homepage "https://example.com"

  app "AppName.app"
end
```

Every cask must have: `version`, `sha256`, `url`, `name`, `desc`, `homepage`, and at least one artifact stanza (`app`, `pkg`, `installer`, `suite`, etc.).

**Canonical stanza order:**

`version` → `sha256` → `url` → `name` → `desc` → `homepage` → `livecheck` → `auto_updates` → `depends_on` → artifacts → `uninstall` → `zap`

Run `brew style --fix <token>` to auto-correct ordering.

**Key points:**

- `version`: Use interpolation (`#{version}`) in URL when possible
- `sha256`: Calculate with `shasum -a 256 <file>`
- `url`: HTTPS preferred; add `verified:` if domain differs from homepage
- `desc`: Concise, no marketing fluff, start with capital letter
- `name`: Full official name with proper capitalization

**Common optional stanzas:**

- `depends_on macos:` - OS requirements (only when genuinely needed)
- `depends_on cask:` - Other required casks (only when genuinely needed)
- `livecheck` - Version checking automation
- `uninstall` - Required for `pkg`/`installer` artifacts; optional otherwise
- `zap` - Thorough cleanup (user files, preferences, caches). Recommended for new casks but not enforced by `brew audit`. Reviewers expect accurate paths — verify them manually.

### 4. Handle Different Architectures

If the app has separate downloads for Apple Silicon and Intel:

```ruby
cask "app-name" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.2.3"
  sha256 arm:   "abc123...",
         intel: "def456..."

  url "https://example.com/app-#{version}-#{arch}.dmg"
  # ...
end
```

If versions differ by architecture:

```ruby
cask "app-name" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "1.2.3"
    sha256 "abc123..."
  end
  on_intel do
    version "1.2.2"
    sha256 "def456..."
  end

  url "https://example.com/app-#{version}-#{arch}.dmg"
  # ...
end
```

## Validation Checklist

Follow the PR template requirements exactly:

### For All Casks (New or Updated)

```bash
# 1. Fix code style
brew style --fix <token>

# 2. Run audit (checks structure, URLs, naming)
brew audit --cask --online <token>
```

Both commands must pass with no errors before proceeding.

### For New Casks Only

```bash
# 1. Check token follows naming rules
# Manually verify against docs: https://docs.brew.sh/Cask-Cookbook#token-reference

# 2. Check cask wasn't previously refused
# Search: https://github.com/Homebrew/homebrew-cask/pulls?q=is%3Apr+is%3Aclosed+is%3Aunmerged+<token>

# 3. Run new cask audit
brew audit --cask --new <token>

# 4. Test installation — always use TOKEN, never file path
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --cask <token>

# 5. Verify the app works
open /Applications/AppName.app

# 6. Test uninstallation
brew uninstall --cask <token>

# 7. Verify cleanup
ls /Applications/ | grep AppName  # Should return nothing
```

**Important:** Always install by token name (e.g., `brew install --cask my-app`), never by file path (e.g., `./Casks/m/my-app.rb`). File path installs fail when using the tap symlink workflow.

**Common audit issues:**

- Missing `verified:` when URL domain ≠ homepage domain
- Description too long (>80 chars) or contains marketing fluff
- Token doesn't follow naming conventions
- SHA256 mismatch
- GitHub repo less than 30 days old (hard failure for `--new` audit)
- App doesn't meet notability thresholds (<30 forks/watchers or <75 stars)

## Testing Tips

### Dry Run (See What Would Happen)

```bash
brew install --cask --dry-run <token>
```

### Force Reinstall (After Changes)

```bash
brew reinstall --cask <token>
```

### Test Uninstall with Zap

```bash
brew uninstall --cask --zap <token>
```

### Check What Files Were Installed

```bash
# For pkg-based casks
pkgutil --files <bundle.id>

# For app-based casks
ls -la /Applications/AppName.app
```

## Common Cask Patterns

### App with Binary

```ruby
app "MyApp.app"
binary "#{appdir}/MyApp.app/Contents/MacOS/mytool"
```

### PKG Installer

```ruby
pkg "Installer.pkg"

uninstall pkgutil: "com.vendor.app.*"
```

### Suite (Multiple Apps)

```ruby
suite "AppSuite"  # Directory containing multiple .app bundles
```

### With Dependencies

```ruby
depends_on macos: ">= :monterey"
depends_on cask: "other-required-app"
```

### Livecheck (Version Auto-detection)

```ruby
livecheck do
  url "https://example.com/releases"
  strategy :sparkle
end
```

## Submitting Your Contribution

### 1. Commit Your Changes

```bash
cd ~/path/to/your/homebrew-cask

# Check what you've changed
git status
git diff

# Stage the new/modified cask
git add Casks/<letter>/<token>.rb

# Commit with correct message format (first line <=50 chars)
# New cask:        "token version (new cask)"
# Version update:  "token version"
# Fix/change:      "token: description"
git commit -m "my-app 1.0.0 (new cask)"
```

### 2. Push to Your Fork

```bash
git push origin <your-branch-name>
```

### 3. Create Pull Request

Target the `main` branch (not `master`):

```bash
gh pr create --base main --title "my-app 1.0.0 (new cask)" --body-file - <<'EOF'
Built and tested locally on macOS [version].

[One sentence if not obvious from title.]
EOF
```

Or via the GitHub web UI — fill in the PR template with:
- Brief description
- Checkboxes ticked ONLY if you completed each step
- AI disclosure (see below)

### 4. AI Disclosure

The PR template includes an AI disclosure section. If AI assisted with the PR:
- Check the AI checkbox in the template.
- Briefly describe how AI was used.
- Confirm that all changes were personally reviewed, tested, and verified — especially `zap` stanza paths.

### 5. Respond to Review

Maintainers may request changes. To update:

```bash
# Make requested changes
vim Casks/<letter>/<token>.rb

# Re-run validation
brew style --fix <token>
brew audit --cask --online <token>

# Test again
brew reinstall --cask <token>

# Commit and push (do not squash after opening PR)
git add Casks/<letter>/<token>.rb
git commit -m "Address review feedback: <what you changed>"
git push origin <your-branch-name>
```

## Troubleshooting

### "Cask not found"

Ensure you're using `HOMEBREW_NO_INSTALL_FROM_API=1` to force local file usage:

```bash
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --cask <token>
```

### File Path Install Fails

Do **not** install by file path (e.g., `brew install ./Casks/t/token.rb`). This fails with the tap symlink workflow. Always use the token name:

```bash
brew install --cask <token>
```

### Symlink Issues

Verify your symlink:

```bash
ls -la $(brew --repository)/Library/Taps/homebrew/homebrew-cask
# Should point to your git repo
```

### Audit Failures

Common fixes:

- `brew style --fix <token>` for formatting
- Check `verified:` parameter if URL/homepage domains differ
- Ensure `desc` is concise (<80 chars)
- Verify SHA256: `shasum -a 256 <file>`
- GitHub repo <30 days old: wait until the repo ages past 30 days
- Notability thresholds not met: check [Acceptable Casks](https://docs.brew.sh/Acceptable-Casks) criteria

### Installation Failures

- Check the actual error message carefully
- Verify the download URL works in browser
- Test with `--verbose` flag: `brew install --cask --verbose <token>`
- Check if app requires specific macOS version

## Quick Reference

**Essential Commands:**

```bash
# Setup
brew untap homebrew/cask
ln -s ~/homebrew-cask $(brew --repository)/Library/Taps/homebrew/homebrew-cask

# Validation
brew style --fix <token>
brew audit --cask --online <token>
brew audit --cask --new <token>  # New casks only

# Testing (always use token, never file path)
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --cask <token>
brew uninstall --cask <token>
brew reinstall --cask <token>

# Cleanup
rm $(brew --repository)/Library/Taps/homebrew/homebrew-cask
brew tap homebrew/cask
```

**File Locations:**

- Casks: `Casks/<first-char>/<token>.rb`
- Helper scripts: `developer/bin/`

**PR Target:**

- Base branch: `main` (not `master`)

**Key Documentation:**

- Token reference: https://docs.brew.sh/Cask-Cookbook#token-reference
- Acceptable casks: https://docs.brew.sh/Acceptable-Casks
- Full cookbook: https://docs.brew.sh/Cask-Cookbook
