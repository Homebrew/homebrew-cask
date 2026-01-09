cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.2"
  sha256 arm:          "4d9c45ef1932914d45f7d942fff65caa77330c28029846881f3d755d7b88120b",
         x86_64:       "5b60cb06d230fdfa2ec91a666debc9a9c123083e19e35d04ac78f407d03f7169",
         x86_64_linux: "83ec742dd439a960bbe04dab1794e62fe62804bce9f62b94f3dc64ff802a0b28",
         arm64_linux:  "ad61c9b8a1767262bf4d40cb216a9038f1bdeca5b18a317c67f6bb6a29da4f23"

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
