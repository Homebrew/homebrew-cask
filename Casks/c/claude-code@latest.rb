cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.331"
  sha256 arm:          "4874591dc39bff1188921b82cbeb8a44e3a33b0f92c888b3d43639b9344101f7",
         intel:        "b5248771cfdcdb2907f7382b748590c976439daffb4bb1f32f2888fc12a06eba",
         arm64_linux:  "3e5afea76cf6ed53f42076d8b175c4ee3d9ab34cd9b90452da115d21ad0d5d31",
         x86_64_linux: "4c00839cf46beb2b38ec310105f2d538f7f9321fe46c636299b74bcab94626b1"

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
