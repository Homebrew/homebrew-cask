cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.36"
  sha256 arm:          "0235db15a3609cc5a1b6a5accf1162362bb14f13084a1934cd6ecc8d042da000",
         x86_64:       "0b942f6e6d99ca0d92fb62203407b1656d8d6724d6a5aeaf01d1a7bc5f0056c4",
         x86_64_linux: "b37c02d731896e3360a50141911ef8121a02930c5b17cfa187b97c44b0fe5bc9",
         arm64_linux:  "58170121b2224674b8eb5c77643d7ba6c6e8ad1e25637c42e6ac69021faf51e6"

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
