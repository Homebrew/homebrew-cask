cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.44"
  sha256 arm:          "3e092ee643e020fb74cc806bb171d8ed95a49d19a9b60f1ca46a7d070e1e00aa",
         x86_64:       "56a3900df2f42459b956ef1ca6ca4251f3dfa5f7c6251eeac6da14965c08e1c5",
         x86_64_linux: "75b4f41dbc0cb6d9dded1af27f71fbbb6335235f122fb5e1c3bb51f949382ffb",
         arm64_linux:  "09694a7fc97bc8a2fe76bae46d655b5791db52187815720494d8922f7fae2d69"

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
