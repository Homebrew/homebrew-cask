cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.6"
  sha256 arm:          "2c126a43f4274383e5141fc10e23a5ec37ff1a8b05eae4f266fe9936c35f2a02",
         x86_64:       "6cf5827a373c7e3ce90db8c69a0c5309aeea4bf073c5564b0e8433b857499796",
         x86_64_linux: "e86870ca13cd82d6d4570329a10a1fd68e11645747657afbdee925e26fc3952a",
         arm64_linux:  "9e2c655a9ae31bdbecd8c6cca6cc0f4e2a595b8f422bd0181b1ff4387f65bed9"

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
