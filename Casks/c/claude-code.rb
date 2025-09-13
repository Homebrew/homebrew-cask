cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.113"
  sha256 arm:          "76d3d5f14dfee40a1d83625c76232263e17664d90e8ec45f78025538d3fb69be",
         x86_64:       "2ee1141ae35a07ae2ea3024fd896fe0d342f280d0ab4537576198e5ff4c725fc",
         x86_64_linux: "013fbbc1d8ad072693c13cc05e84ba851c908e5c9f0790ee8711afa0106337da",
         arm64_linux:  "233ddb944ca7ded2dba6154209533701d0a325868e8c5008e0c466dcee5e7ea9"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
