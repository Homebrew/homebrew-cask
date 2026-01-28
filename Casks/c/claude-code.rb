cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.22"
  sha256 arm:          "dd07b877ea3213ae7fd1df5536de3b441fbf7b11f93a0c20078540a6bd69033e",
         x86_64:       "3b16c67ef7d9edc6139cff1c73fc55b630dbeaa72fb7853fc0748309fc6529a0",
         x86_64_linux: "f7ba63e4d72ea8394998dec8b25cf94ba17faec434db17885218c0884103b5e9",
         arm64_linux:  "3750cebff6c8d7664fdffef578b14b962af8e29daa7ce53c0a6bd0a317ce973e"

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
