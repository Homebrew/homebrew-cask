cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.243"
  sha256 arm:          "1f72dc749e59d1e8b1aa0ecdc2b3a65e599698af9087be4ac1054f57602c304d",
         intel:        "37104a799bffa316fdfe6d4e99855031ad9bb5193d0d8e7e3bbb02ee4f33119f",
         arm64_linux:  "de5c21631e079b78c0b98f02a6a556acb37908425f4b80d7348cf3cd86ea5236",
         x86_64_linux: "4b0dafeedd0b469c41988e200036fd773e7553ba960349c9f02a82c6d1f2ba27"

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
