cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.61"
  sha256 arm:          "b3ed440d3c188d26fbad5a9edf8db2682eff114a22732fa9d3281433a6c9c3eb",
         x86_64:       "77aea692e7fa2ba49786db6aa8a5bd04297f9781c4ceb81e3495617c9089f2be",
         x86_64_linux: "5c5686e99180eb0bd0498564e1fa991aa05c4199a08222a15c1563626332e8fc",
         arm64_linux:  "eb5414c3c73bb4a2d7c99a2e9005f3e0930887e06661c0d70bf3be9ab877f68e"

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
