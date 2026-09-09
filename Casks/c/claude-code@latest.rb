cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.266"
  sha256 arm:          "553d1b9e9e7068b275c0a783c7e139ff6503096f286e674c8c919379fb0eca62",
         intel:        "e8010163be47e29681e768946865130482e82bb47b2c5e7d0f217bacd25b526d",
         arm64_linux:  "6e44c5d3c97efaa1ee35ab8dd875a907681707e5cc4f6ca0da3d13a917bbcedb",
         x86_64_linux: "19842705e989393fce936804df6d2ab034860e24b8f8880357981d87ffd83fac"

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
