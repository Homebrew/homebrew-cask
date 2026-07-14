cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.208"
  sha256 arm:          "051c7f28871b158132ac03a6140f2f2ab4046b18ecc4f7a91a2ac4d54774551e",
         x86_64:       "804ea81cb1e2b5f883c2490fc668fd19ce185e37b9b9991f5832d38dc62e2ff4",
         x86_64_linux: "125372839bc827ca24dd72382627b291fbca615408d732fe3291bc16723ce7f3",
         arm64_linux:  "81e5dd48377bfd3cb733820e4e23f2294c925cba1e52dbeada69f46929f0c4a6"

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
