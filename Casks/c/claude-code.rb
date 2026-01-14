cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.7"
  sha256 arm:          "3429391a4ad97db4a91f33ab72613745d949133b276385e4ed93ed3706aa03c2",
         x86_64:       "b734bb3c0cddb53f6117763d9755e197502b75d18475620a87f055bd670cd291",
         x86_64_linux: "0e598f3c4f38f2f66ef027a257782396fc993c704450b96924004b76fd806f45",
         arm64_linux:  "72f97b79dd5feb99dac6ee33a1b61d60aa720a010d7a9f660147cde10fe4023e"

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
