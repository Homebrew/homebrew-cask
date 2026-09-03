cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.259"
  sha256 arm:          "884baa38fe1a624be25c4a91568bf5a08b5cf4e7d7acf29b7760e3525d964898",
         intel:        "af8741cff0d3fb5c4b893c7cb3613bd21b28fa61cca45469d60b8e5e161eb9d8",
         arm64_linux:  "c6ff03c389ccdeae0f19e9dc32488eeba61fbef4796f531dbfba6c00f45040d0",
         x86_64_linux: "f7dd62ae415378018cd21dd950eb3bac174ab085830304d3b8b098146bfd47b6"

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
