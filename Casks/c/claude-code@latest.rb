cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.101"
  sha256 arm:          "a6ddd3a7ddd9a51b8ad3b0585875d383024a37cf2dde4c8cabde775b74512d74",
         x86_64:       "53f987ed6f107c73bb891401e576bd7e86223ca8e20ec1f123b113ef880950b8",
         x86_64_linux: "d064b4f28cf0950f1f9c355b471fdefaae6c00cda1a8ea895c7518330cee0cd8",
         arm64_linux:  "bb30108c64a29600fcc71e94c4843ce2155603d7d38e6a6825c472438afd0561"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code"

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
