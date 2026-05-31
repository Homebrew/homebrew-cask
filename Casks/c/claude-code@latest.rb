cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.159"
  sha256 arm:          "5adf7b4d349f743d669cd5adf2ce76dbb5e146d8ab99b3a63c5aef2ef15595f9",
         x86_64:       "ababd6c754f7e028ab5e4bd74d4d6d3a802cafb57c9d41ea9178e897655c17bd",
         x86_64_linux: "e2126caf00ed3ec09371a29947658c7e9b31185256b2ac5728263bd95f7e3541",
         arm64_linux:  "befd054f02c17e4b61a6a92b30286a147ca8c5c1bbf38b91dd14cba6fbb1e07d"

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
