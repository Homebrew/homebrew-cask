cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.41"
  sha256 arm:          "8ddd6cce9d69012bfba3eb3a3eb5a23a548c8148f26e2aadd2467a698066bed5",
         x86_64:       "08935b8628aa9777dc0ab81e36eadc00ffa321fa217082fe4b68c087909d1a48",
         x86_64_linux: "61156c7c30c7730cffaf621c981e271cdaabda68592f94d0cdb9d26e9c0be754",
         arm64_linux:  "cea1c535454d0d6c1051985efd3f769e2da22f7a79e9cc267aa7d2b6c5e6a0cf"

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
