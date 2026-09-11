cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.268"
  sha256 arm:          "06a96d5423f83770f120859f1c58e60d7252cc4c122aa13043b7e7cd716bc76a",
         intel:        "f94c0d5ab0ab79f28e8dc9129ae7c980c2c1af65f3ea67ee6e9256bed3da67e9",
         arm64_linux:  "116fd031f939ef1e09edf170d62c489e1cc28ed6bfbda49f948773ba168c8f62",
         x86_64_linux: "9691a2b7bd796712ca8cffb8e32e54ff7fc45b662540233171a16a94a0425653"

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
