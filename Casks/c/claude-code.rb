cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.69"
  sha256 arm:          "38cfceacc0c1df6923fa9c853b5eed5aa94f7417b436d44f3de24c31ef0b4df4",
         x86_64:       "6ada4c9aac57fd482d3477ab1fb0228c3528ee481a005fd7107c527f1b8301c4",
         x86_64_linux: "160b4e20730c2b964e576419862b569bfc0204c8f807021c954f4c09e61a29d8",
         arm64_linux:  "dae54183e982b814da04c3d768ed34e7dd4f918fabbfafde040095554d9c1a7b"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  binary "claude"

  zap trash: [
    "~/.cache/claude",
    "~/.claude",
    "~/.claude.json*",
    "~/.config/claude",
    "~/.local/bin/claude",
    "~/.local/share/claude",
    "~/.local/state/claude",
    "~/Library/Caches/claude-cli-nodejs",
  ]

  caveats <<~EOS
    Claude Code's auto-updater installs updates to `~/.local/bin/claude` and
    not to Homebrew's location. It is recommended to disable the auto-updater
    with either `DISABLE_AUTOUPDATER=1` or
    `claude config set -g autoUpdates false` and use
    `brew upgrade --cask #{token}`.
  EOS
end
