cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.234"
  sha256 arm:          "08d8700313697cbe730a25420c908a299ce52d56f0eb2cf4fac94cab5109bc57",
         intel:        "1a7b2e8948609f1f732a6498cd17b805b5c5187d74a99adc61ebaa5a29efc34c",
         arm64_linux:  "24adda673591cd8345b03ec8245915bb151a259a1ebc3ef23649b57ba944aaa2",
         x86_64_linux: "3473601ea695d5bf769c5b202844d4cb4fbf723ae995450fcb6973204775c84a"

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
