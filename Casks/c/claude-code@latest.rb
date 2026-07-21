cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.216"
  sha256 arm:          "d01b49210d72ecbe277a2665d104bacccddf2d22185be99446d2929e0edfc48d",
         x86_64:       "e17cdc51437bd7a80ce0244d25045f568d67b212eea4ff81b83ee90f8666e42f",
         x86_64_linux: "74deca45220b8080ec75ab099bd5a5980e41a2b5879846a008fb115d436de085",
         arm64_linux:  "9e3a6aecc5164f607e1183aea2092c7d7705d146e504a6207df291776996a8ea"

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
