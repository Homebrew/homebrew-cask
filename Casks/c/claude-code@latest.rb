cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.198"
  sha256 arm:          "ab6f7ee109816ede414f7c285446633f805b623aa609f425609a64266451d61e",
         x86_64:       "280b6cfc60dacc4caed31af1249e53c259c01759556e60633944c02405c82dd0",
         x86_64_linux: "7066af42a5fe93038c13af5072d4c034dc3928092cb121fdd892c76b94b6b84d",
         arm64_linux:  "99b50a6f2b1f3ef07bcaf1e58a2f9883c470c84e428afa321972b1aa20372e9a"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code"

  binary "claude"

  zap trash: [
        "~/.cache/claude",
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"
end
