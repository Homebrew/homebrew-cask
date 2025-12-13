cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.69"
  sha256 arm:          "08c35a12f0f29118f42240a19b5836cd39cf3db054c57cd540a9e2d43077bb4e",
         x86_64:       "c69f584c56eb5c280468d6eb1948b40f21809064b3f6bcd1bf20c5bc142da411",
         x86_64_linux: "dd9857b0e2c9c0a7a966fb9a92af1c3494e12cf08aaddc441132c41a78902510",
         arm64_linux:  "ae14d975dca38fb84e6872df622cf1f9f2b7edd2472be11d4e1103a6333eea24"

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
