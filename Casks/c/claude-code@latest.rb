cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.154"
  sha256 arm:          "bc9881b107d7be1743c64c8b72dd66798f5d0947dbc48ed0d77964c473661fd4",
         x86_64:       "1608d93261879201dcf77dd32dc173efbeea715187d3542fd05afcf7d5b5ec4d",
         x86_64_linux: "67f6cab7e6c124010f62ac18f8078bc09e0db6a5b9e8ae874e9e73033c451793",
         arm64_linux:  "9f732de278f7adc61d29fd5b055ddaf1bae3bb26d75fe6e06a125602565777a8"

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
