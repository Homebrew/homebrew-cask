cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.43"
  sha256 arm:          "ecdf7da5af8d7b4eb73e1b008bb37fe8c9e673a56c8ffd4b95abf62184f5f6b0",
         x86_64:       "2a9d7b546fd92ca0067d9b8ef1d84921d0c853cec5ee5b54f18885a57c98a26e",
         x86_64_linux: "2a0f2aaeee702631ca76a4a36d721622d2bc5a62f6c08945e4cf7fe55daea3ea",
         arm64_linux:  "284ebf69b2baae949252658b8a02fba1321f6c9717c7335afb5c8bb077eaf846"

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
