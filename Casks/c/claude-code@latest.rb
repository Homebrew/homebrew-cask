cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.167"
  sha256 arm:          "fb3cbe9200b3eeba7ae06ee43fdb4b4b2b231d5fa8040d0e47954a7f374d1530",
         x86_64:       "a5087977bee95ca84598c8b940fc68165c449722ab410db45f610d148e9c2d0e",
         x86_64_linux: "d6d2995bfca3f8539d9e9aa513ff43c3daa0d556d6d1af07c6df681e050e522c",
         arm64_linux:  "b8f383df1dca557dc8fb817e4e76335639f94a0a8c7b803ca2f5aef12d373f09"

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
