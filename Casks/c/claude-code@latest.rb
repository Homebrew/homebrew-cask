cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.292"
  sha256 arm:          "97a01e5bc74a199e67189435d0331ea3a24eac2e07db4b76d9148c5b0386138f",
         intel:        "a9739a215728ce72435885fedb19d1317ee1ccec61e246fbfb3acaf01689c473",
         arm64_linux:  "24caa9e6ff13bf227049a2626f1c816fc895023050f0ec3b12dbf14d897367e0",
         x86_64_linux: "a967e7b1d8b4e47ee421d5433027880347952b0c0857abf880e2c942a4ec93b3"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude"
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
