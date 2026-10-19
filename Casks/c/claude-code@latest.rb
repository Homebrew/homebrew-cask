cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.303"
  sha256 arm:          "d2da3b003dc08b88b7230469014fe3e1dc6fe94bc8f648e89b34175d30269370",
         intel:        "6c5d63b43568c5d60963d40f05b0087cb03ba44a90740d27adc505f4157806db",
         arm64_linux:  "f384f49826336d4ac0484ac6ac9d8d16f64d244d186ce227cbd7cc088c03315d",
         x86_64_linux: "375988f457756524234695cf2d8f64ace99c5f68682e47ea24862a843c191450"

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
