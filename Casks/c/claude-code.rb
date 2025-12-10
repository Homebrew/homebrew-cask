cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.64"
  sha256 arm:          "6dee9fca0e202ab2a5a4d5aead3924c8c456aa6d99b1acfa093e83dbd2e0ca80",
         x86_64:       "e3c9f55152fe4f3e07cac2a8efd2b4c2e7b98ecfcdcd53b886d692bf804436f3",
         x86_64_linux: "751c40366be8188a7d316c0caa632ca0c2aa3c570e849763edca0866a8c7a231",
         arm64_linux:  "807b8f2e0a23e2cd589f0c9ecb5e3fbbf960b4d8b4b10cad7758cc5a8bfc4300"

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
