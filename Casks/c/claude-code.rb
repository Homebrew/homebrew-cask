cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.1"
  sha256 arm:          "c7939fb4bd10bd0e5aca07f8cbc4cea85c6fccc71d367a58566d254eb13f2098",
         x86_64:       "fe723b101d23f13443c262026297f1705ce7fe5fd89572278a5833c98a1e0d46",
         x86_64_linux: "7d630126bd6fa8372720a48055a85869741b076b143440045c89565cf3c65a28",
         arm64_linux:  "3ec039081a8bdd141fbd7f49ea68af747a070164925f9221b1b1218a8b4a5b27"

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
