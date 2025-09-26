cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.127"
  sha256 arm:          "7604e2eff56d32959efa30d8a38297d4b252fe2233d36b93fec59cb8b381c7a5",
         x86_64:       "58d50c02afda70194b9470394fd3903e10eafa4dfc2b3b953e67138e7ae4b31d",
         x86_64_linux: "31041d49a70e00654d722258a00aa407e5e0c96647ba68a3e92f55b6a0e01138",
         arm64_linux:  "b1a3835fe336d102f6eb7cf11d37022f6d9edfff6f5f5f3c17564e0ab614a6de"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
