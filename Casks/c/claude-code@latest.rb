cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.197"
  sha256 arm:          "8cc0c4d1e4eb1dca3b0cc92ab02ee3505de764e023f8c901761c167b72041fb8",
         x86_64:       "5e8a57cc7a92377f0744fa4c79191cf93d4b26c79cb919b07a407511fed1be26",
         x86_64_linux: "f54e69cbc89b2da61a415700af7ff52a147e862517d4f1b0eecf768448cf7f83",
         arm64_linux:  "fb48473c467c27615ac799a754f4ef0b68c363e4596cefbb59c3815d51a0cc8a"

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
