cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.172"
  sha256 arm:          "3c31f345575bf6f261c7e19981f6491bb93eeb0ffb499e95033610a7184831ce",
         x86_64:       "c507f98750c5230e4247f7eadff38e4db04c006904f85379e31c5d5e82e1c384",
         x86_64_linux: "c0915dd1691d569aeebc7978b12e029718323685ec0dd4b5c6a453108d6be1f7",
         arm64_linux:  "4ef0d735bd4180c3bffc381f6dc38df979229a8637d294be751c6043d93d12e1"

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
