cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.57"
  sha256 arm:          "bc4c38dc67129cae6a33a209174867577a12b3b1701904a3dd72664d23cd0b00",
         x86_64:       "f326004cc6b403f78d1af1a7d5cebd1710a065325d24d9a177c6f9639c5e0556",
         x86_64_linux: "3895802ad8e41ce105f26bdd8924088072ec1102dc68f08899c4ee9a26352964",
         arm64_linux:  "4b6990c58d740c5b797d1730062682abe56d7284bca2c09ddeecb6a43b82bb4a"

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
