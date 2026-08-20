cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.238"
  sha256 arm:          "1c196c456373b57818ae87df84aecee96cb659448c0d6a6bbb401ac5758431b2",
         intel:        "d10bc7bb1720435f8830aa3ee74085f09348d2b1a2a152bdee251b770d76cc73",
         arm64_linux:  "28d736120a6b14c5eae1ad1470e73371818c9c2fa41e0b3c7040207aa2d4edee",
         x86_64_linux: "0933b286cf94e1b2504b35ac165ab76b8f822735d53371c56393988c23040d58"

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
