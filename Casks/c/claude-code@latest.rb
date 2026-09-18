cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.277"
  sha256 arm:          "73d6a2a55c46907e49bd8bb7608e134333bd71173351ee16ddce7d7db9914b9c",
         intel:        "82b74d616e360cdff37dd1cecdf03e6bdfaa02411d914faac7af22a273a3132d",
         arm64_linux:  "242c4d743beabc822edd8f247101bb800b4036c69e74b9e2a1adb120dfe46f5d",
         x86_64_linux: "722210f05ba494d8f6df69423c4d4f2960900f7a007d0532851c7a36e375cab7"

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
