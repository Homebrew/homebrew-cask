cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.269"
  sha256 arm:          "c942e1228b93cb4d52183b3dfbc77f28264f35aa947acd9c0853d029164cf450",
         intel:        "5a8c02f9ff48f1917b38e86d837114b8d5cbbf534ce72bc6aa106eb17eb3a90f",
         arm64_linux:  "4c84a33adc34c60d4de3acd43cfe7c64ba966591e51587c04867b8d589021be4",
         x86_64_linux: "25e44883f54419569a3d739f38cbbdaebe83b09895da0f343e1b003710a4775b"

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
