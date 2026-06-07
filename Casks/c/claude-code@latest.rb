cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.168"
  sha256 arm:          "377f0ecedba8246bdabdf312ce8b7cc8ae1160997b26f5edca352a4a8d61dc78",
         x86_64:       "688f3d9fa0955878c291a58febe9e4daa061326da217ada740d97c5e17634a26",
         x86_64_linux: "e2f7cb50442bdee21bf2686ef3725a6af187a204e46c4af5c12d0f6d76326485",
         arm64_linux:  "40d50e7c45742aaa3707fa3628d7f765c55ed503108b6f100513e38d32477aa0"

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
