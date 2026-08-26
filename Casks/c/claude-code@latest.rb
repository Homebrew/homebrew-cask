cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.246"
  sha256 arm:          "7b09f01cb76a38e0e3a7c47c5d698d382162a5ff26538fc778683770caf9218b",
         intel:        "336625850986371487de7ece776d583f36cc3b3bc7178fcfbde3656d010289fb",
         arm64_linux:  "f98296e6e61c507589d1a973b262976b734700ec4e055cb64afdbf6d9a337db7",
         x86_64_linux: "1a0a662dc1bb938eaec38545abce9a4a69113d7d7f7c5e1a553ea276617b906a"

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
