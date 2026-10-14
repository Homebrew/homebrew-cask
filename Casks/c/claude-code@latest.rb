cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.300"
  sha256 arm:          "475517caa611e3318a2f298fa071287ec98955538df78c58f709ecc01e5ae2d3",
         intel:        "5824fc36863e70bbd070491bb9359e217d3f17b38c45697c085b31a3a67356b3",
         arm64_linux:  "ae2295ae2da156936bf5831ab01971ce924d0c9a0af174e28d96fffa8d5fa0a6",
         x86_64_linux: "674deba0bba9aee479f4503c438b49303b6fdd304b9a471b14977aaec5215453"

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
