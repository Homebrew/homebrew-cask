cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.258"
  sha256 arm:          "b63136194160791c27cfa7b0403060d85eb0752991625fde8c09f9acacb17c78",
         intel:        "c857db5cd712865623bd61e806cf3f7e8e279c9e5c7c0af5eca06ca6717fc7fb",
         arm64_linux:  "43dc490af55262edcb3e9b1cb315de22cc09ccb08bd52a4c39bc5eabaa63100f",
         x86_64_linux: "704f1334ac65d3e89e1c6c1d7663293ad786a6166afdb71b5075337df630f976"

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
