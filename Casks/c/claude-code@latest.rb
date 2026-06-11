cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.173"
  sha256 arm:          "235c1bacdcc7f9d8d92368c95a0c66c26fcac98f878f21b10c73af340bc331ab",
         x86_64:       "5a35c1de2b13245e9b3bd72c4df4f068adce14f6d417a3f68bf0bb4372271687",
         x86_64_linux: "cf7ea194e1748932fa30f180eaa9f56f9a7039dce370302988c2926629b2a219",
         arm64_linux:  "cc593dfc263f707ed222e334ff5c12a9addc24abc206768962f9d063b2fd7ac9"

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
