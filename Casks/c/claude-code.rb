cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.74"
  sha256 arm:          "4e25eec16cefdaf0de6f37d6b2417195996bd7bb91958f3712513e8e8e15681f",
         x86_64:       "16c0c33e3f2b78c0f4de6f65964c6e72a1ddf2d6d32813a1bfc89864dea73c0f",
         x86_64_linux: "43065ff86a1b952225e42042bf4dfe9f6b72ff8ed91686a23add5396b1a11e80",
         arm64_linux:  "04922b072d663bce236fdfa04b29b363ea6e144e5fae79e77504d38d902b0780"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
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
end
