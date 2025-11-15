cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.42"
  sha256 arm:          "b3ce409d2f6e938c24abc72cb3b31236c3ac617bfbd92aa46e077aa18f67a177",
         x86_64:       "bbce2eb4c3ed4b8ecc6bdaa372cb124fea552fdaa5e15f3ec5255f1d5e897f15",
         x86_64_linux: "7d67b12b25ea25ba1c61bb28ba7c6b24fdc9a4abec104d46ea24adbefd14a3f1",
         arm64_linux:  "e875b7ef8a71c093a5b35eb11095553af1dde0b94dbdf7c383521c1f202cf993"

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
