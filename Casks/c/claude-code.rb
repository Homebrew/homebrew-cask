cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.45"
  sha256 arm:          "a52aa09a7dde0d700120693bbc514b5decb3421c38c2051e1624eddb6f727aa8",
         x86_64:       "48d92e1099f3a6679b050582dfbb4dcf6b138a08958c160a269b9418cf10de7b",
         x86_64_linux: "2ab82439665eddd102833dc1917ae7afa8bfeea92c1daeda5c3e42ef407e60af",
         arm64_linux:  "2e6e7e00a2cedcb5e05bd2434d3224056d7eff50484ebf5a04683b5bce6112c0"

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
