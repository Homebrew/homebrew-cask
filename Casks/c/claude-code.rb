cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.71"
  sha256 arm:          "e1d03be9667c45ed3389a7ad23e5cd998da01b06067d68d2db17b0660f75fd62",
         x86_64:       "9875c41d5cbbb54603507eac64fdf896843fee8f5ccbb9a3138c1c19a22a7e53",
         x86_64_linux: "38eab2ff90b2961afbca8957f779ec8a642dfe9a24ff169db780b8ab6685bf3b",
         arm64_linux:  "7df8e01b62480c48bbbe10ff892e97589d2564ef11c49a93f51cb77a96fa4900"

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
