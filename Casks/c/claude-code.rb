cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.142"
  sha256 arm:          "772021afa051160b97e04d379738df84d4cacd311e8c199a325fb013b3eaa448",
         x86_64:       "d00bc6fb38d0837ce811cc862a3b6822795b33dbce8361703b1e5e903bd240fd",
         arm64_linux:  "767b13fc28763ca9d663b00f90e501f134b356f1b72dcf0eea59b7e3bed86411",
         x86_64_linux: "1249a1dadfe2d48f320bd4e1b657a1a0d82435da76deb11ce509822407cf24ec"

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
