cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.45"
  sha256 arm:          "e65af16b9b732ce01d6423c281f7e6a255b5bb8850780becf999153386e37fd4",
         x86_64:       "d10d02e6bcdae7cc8d51a083cb7e9333e792d36ed73c9496035ef955b394b6b9",
         x86_64_linux: "e7e847383c4666994707741e8e56abf84dd2430153620d3ba5ff5a849375e4de",
         arm64_linux:  "e678f0e8112e470a92723ad6883ecb1940d1411548f678f21ea4e9cc41057e7f"

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
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"
end
