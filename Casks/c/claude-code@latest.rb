cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.161"
  sha256 arm:          "5b4dc79eab05f9756c252c71deb339efa4429dffc1967dd8392cf87fcde4867f",
         x86_64:       "6f874fecac8a951f5f1991dc1470bc85a5e24f2588859b89cca0f1b6b5592310",
         x86_64_linux: "1f6a22f387a3bce496b6d869389a35dffb5a69c97d9831833f3bd6dc0e6c6c28",
         arm64_linux:  "7dfa0a79a2fc9f332057cdc0302f808cba63df7b75e2ccb5a7c1ab62639804e3"

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
