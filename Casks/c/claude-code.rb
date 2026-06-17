cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.170"
  sha256 arm:          "e903646d8b7a31882a80ecd27569a27d8ac57b3708745f349709632c84117fdf",
         x86_64:       "914f23a70bbed5d9ae567e3e04b86206ed9971b371bc9baca3f79c8885bfddb4",
         arm64_linux:  "1bb9d032440a75532f7dd4cafbc687f220aaf16c63eba17e192dfbec2f04bd25",
         x86_64_linux: "849e007277a0442ab27570d3e3d6d43787507946590e8dd1947e5a39b7081f9e"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/stable"
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
