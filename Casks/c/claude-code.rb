cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.49"
  sha256 arm:          "2b984814350ed9a9b70506bcbc10b77da46f5b3e06a9c6932f0731d042049b98",
         x86_64:       "3155c5a13e8fa9976038a4b955c3ec006aa17c2c12d8bb8a2dd3056661eeed25",
         x86_64_linux: "e7a7565665ecbccca2c6912b2ef29da2b137d260201b931c737b7dd3821c6e2f",
         arm64_linux:  "e4e4ea8a9f8bce5f8fbaae7bac7c7a1826ea7ba68b38b9c2951e8466bca91331"

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
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"
end
