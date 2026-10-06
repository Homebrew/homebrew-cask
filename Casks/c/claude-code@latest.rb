cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.290"
  sha256 arm:          "b8412a3826b2dc8ecb1c0605970c28dea28355de5faa740407dd881acdd40237",
         intel:        "c3b1cb200701ce02fd5000cad06cdfab9858773a03ffc9c6483a2f35eae0c358",
         arm64_linux:  "24c31a685e363190c165353f10b4e8434fd22647c1dd76eb6d2a05634eb60b95",
         x86_64_linux: "ea38ee1a1f946eea9bc6e97fb912dbe71fc379b25cc605d91b308afa1ca08be7"

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
