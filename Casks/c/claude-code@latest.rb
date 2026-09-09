cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.267"
  sha256 arm:          "a681f3008f0050029aeebcab3af51bb6a55ddeb625a3af3141a4416d43cd2558",
         intel:        "071988cb2e5a4378d8543d78e0ff5f8ed1ecc5e113271774a0582ee74fb0ef79",
         arm64_linux:  "226a4e009574044a18bf5495f127806b2a1bfcbf25b3c01608705fafee95fefb",
         x86_64_linux: "0399c793ff571d5946ef923d80b4f330d05ac4b6842a6b0775468f5d389403c0"

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
