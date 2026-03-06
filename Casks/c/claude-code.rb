cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.70"
  sha256 arm:          "6181e50bc9a4185f36e543744d256b740e0dfa3c3fdcf1d04b78387b2b466781",
         x86_64:       "338755dce5a5c99419f37be8dd424410c35fc476f7d8ccacd9ed7ef33b8473ae",
         x86_64_linux: "1e5c1011ec899ef0ca9f0811c13c3ed44437422aed85af600d5fe50746faaf1d",
         arm64_linux:  "264c669ce4740bb4896b07ac0110190bcf618eddd4fb0068b3fe2ce989734682"

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
