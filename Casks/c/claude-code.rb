cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.179"
  sha256 arm:          "af2a2d0cb99b0e8b094bc5dbe114ed2d5b2d27ba440987ef6f2f209da9954253",
         x86_64:       "a0ad60761294bd208eda6cb0fd8e896c64397c8d317546a696c5e627782ec8cb",
         arm64_linux:  "25d2eba2351df153f872a8e19289f5042a26b430cd446564bd92a0dec5d681cd",
         x86_64_linux: "6d8422de5ac8ac2077b20e2a6307083f85609aaf45f8c783ec2f7d71e8781e70"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
