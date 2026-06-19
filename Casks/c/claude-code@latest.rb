cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.183"
  sha256 arm:          "6218efccd06194ea0bc381121bf03040a027a04d991eaed886da02a00449ad0f",
         x86_64:       "c70248f96b5831ff86ac169ab53c87ec5480f91ae386783da11004875c2ad1b7",
         x86_64_linux: "df3b409c5b25299df52c5ee81f64811dbdcb2e18c1beefe7f733c326f0a8cdce",
         arm64_linux:  "260a6e43fe9c6fd8800317581982ff50e4f4401d02ef625faa4df723bb9710b3"

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
