cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.3"
  sha256 arm:          "4c8259d2e87e11874b0ac2a6cc1c83271ebb4dd4b2fee9cee92fe4a5f7db03dd",
         x86_64:       "e087bff39d3d8b03a1d637a8264fc36f1237b4155dcc397161929157c4cf590b",
         x86_64_linux: "c8de68f17954c30157100600c7a85e6dbaf8bca64875e65071f5e87fbc62d882",
         arm64_linux:  "1947e332e10bfc961ea974cb98b6f53f2c85c3d8c2d0ff476f9093c49864b35f"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
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
