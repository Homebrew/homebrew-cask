cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.73"
  sha256 arm:          "37bc9c91cb8c5a8579f2110a1f1eba79af0f56a2a1456fac873aabcd8578dca4",
         x86_64:       "494b2fdda9eff4e210eb0643bf3d7aab043ece4d7cd68b38343752150827bc12",
         x86_64_linux: "950f96edb17619a94d53a5319bf56c18ffa2b8ce515f65bb1c67952c9977e060",
         arm64_linux:  "7794da574057121a4b3b63bfdc3e04fa198b3f0b9460e3452e9ec983688a0996"

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
