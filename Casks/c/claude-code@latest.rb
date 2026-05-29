cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.157"
  sha256 arm:          "10f398510f0e6bd7c677ee25cfc698601bf8b1ec89658f823fa23a2f80a8a73f",
         x86_64:       "33b0e60e40351210f1bbb36a9478ce125474184ce0b6871f685f587f0be1b29a",
         x86_64_linux: "3215501f8cfee9a70601c2fbc2c84e9d020e4e7148a0b8b8264f4d8c026bc64b",
         arm64_linux:  "57223365cbe16546fb4c0e28912b3f8cb61cac2b5ccca84b71719d9f133286bf"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/latest"
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
