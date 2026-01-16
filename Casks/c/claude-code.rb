cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.9"
  sha256 arm:          "8ad1ad51cbca97921b67a2b9a638bde4caa04ff2ef78dc21a487e69af30cf69c",
         x86_64:       "2af97c38541891036f5e9d9901ca728a864fb8358f721be322bec9f2e489f1e0",
         x86_64_linux: "8e3da4e5c904191eb97013706f33a4199562dd06360d950676a62c87e9fbd0d0",
         arm64_linux:  "4079ef1a0ef7fd29a9dd8083d3ef2ba00fa441a8601b1c0c659f13614ecd5956"

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
