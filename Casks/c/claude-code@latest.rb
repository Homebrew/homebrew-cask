cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.261"
  sha256 arm:          "5efecaff231b798be3c66def9be54183623b328b80eaef17f93c43987024e82a",
         intel:        "2cbc002b32778bd70aa2e668ada920c54d9aacd91b71dbd5619c01ca148ae533",
         arm64_linux:  "7bbed5a9b0fc2e4ec67bad3490d06ca91b86d6b037d47520b7898951757d1b8a",
         x86_64_linux: "4ae40dd1784e85753e742e09f267d29ecbb82890361ad3817d27560866d364a6"

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
