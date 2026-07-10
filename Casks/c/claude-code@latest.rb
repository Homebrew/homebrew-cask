cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.206"
  sha256 arm:          "3197aba4442dbd5b3df42b6f35e6d7bd03b5e48ce18b7a3c5c6f5f8c28e03b7f",
         x86_64:       "b1e1636917a12c7d4e1fa54cd13f7f76ba3779fb988180610b6ca483258c2f46",
         x86_64_linux: "d131494be407ff56a62f4e99a96ba60102002d01e3b6b1494db16bef4b7f060f",
         arm64_linux:  "cb8ccaf4ae6beb558747227a362010c6b32b4f4a5868c3a7e96aa9972fc6ef58"

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
