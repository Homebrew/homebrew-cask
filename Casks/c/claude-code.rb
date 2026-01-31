cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.29"
  sha256 arm:          "283e85de5aaabc707b366ef2b52e544a41480210b04b2bc9706bc8c7fe7623ba",
         x86_64:       "fe6d22baff47e9c7fd9ed00773d760e5328c3ea5ffc5d7a7e1d2082e7995869b",
         x86_64_linux: "4363a3acd8c39c645a7460ffba139d062ca38ddf40362508ea0be20159c4398c",
         arm64_linux:  "89525e86803808fd20232ee781ca712542e995da32674d01011c63628a067cb1"

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
