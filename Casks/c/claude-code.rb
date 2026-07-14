cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.202"
  sha256 arm:          "7414f707861e2fe5afef33a466f888a8d2170e5028f5e9d2858f1d3ef45ffca5",
         x86_64:       "0dc578bb294094f5041e99a0444030ac6ae7236b387e56f00d4a5214816763bd",
         arm64_linux:  "de5e0bb28e2b32409444ed4c1431e2931001c05ed270a3dc96c6706b0693867f",
         x86_64_linux: "71590202249892db3805ecd5b867f831f04b8129eaabd3f9a5bd4ba16b52c839"

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
