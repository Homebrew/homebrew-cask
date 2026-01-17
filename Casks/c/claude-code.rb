cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.11"
  sha256 arm:          "2345c139c770576c354b7a39399ff941c1a8f375605c20a7abaedfff9a14d1d7",
         x86_64:       "015d419eff8acd55d3aae49e8a1e5ed5e3f1fd8b3fff2796fdcb2b6aabe49854",
         x86_64_linux: "9d79cc613d5feff19c82330601bcc53d41cd03c42431110d74bc3253fefee263",
         arm64_linux:  "494390020dcce1cf192ad19c20df4fba66b7a732e9dc32793289be948e589e6a"

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
