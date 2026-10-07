cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.293"
  sha256 arm:          "4e21122a227857da1178aca3299700c1fd7f2b77c93f12e73c2c76db796a105e",
         intel:        "267af22d4eb187b8d65d1592e6fabf57b1df6c254913d5a6c5d8b956a02cd002",
         arm64_linux:  "a43629e888f0a7d96c5e8de62abf44852433a7ff2481574688db3e5b6399491f",
         x86_64_linux: "8968405e26db478af44eabc4635ab5ca557057b702a54460a59c13e1b253e978"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude"
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
