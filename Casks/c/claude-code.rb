cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.76"
  sha256 arm:          "b76f6d4d09233e67295897b0a1ed2e22d7afa406431529d8b1b532b63b8cbcbd",
         x86_64:       "9d94582f0af5d2201f1c907bf24ff8d216104b897ee0b24795a6c081f40e08d7",
         x86_64_linux: "5dcdb480f91ba0df0bc8bd6aff148d3dfd3883f0899eeb5b9427a8b0abe7a687",
         arm64_linux:  "f64a994c8e5bfb84d7242cebbec75d6919db2ee46d50b8fc7a88d5066db193f9"

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
