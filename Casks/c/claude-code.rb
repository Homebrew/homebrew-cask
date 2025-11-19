cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.46"
  sha256 arm:          "49187e88d177d02ee18b5ee02b0407b9e663a53962fe24ce0bcb9579f8f1b794",
         x86_64:       "e4ddb0d87bd490e46550f0a160a8fccb48f8cdbc6499b597730c5b6b0ae8cda6",
         x86_64_linux: "a45bc2ea58c84dd263420b3284194d2648c4a5095563487b1d0678621de5e28a",
         arm64_linux:  "f81b64b2c95395d162d149fe5934b850a2b93b1a6eecad69d5e59ad756e1be0e"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "claude"

  zap trash: [
    "~/.cache/claude",
    "~/.claude",
    "~/.claude.json*",
    "~/.config/claude",
    "~/.local/bin/claude",
    "~/.local/share/claude",
    "~/.local/state/claude",
    "~/Library/Caches/claude-cli-nodejs",
  ]
end
