cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.332"
  sha256 arm:          "5b8214f8f082f3187420b27b4063b9b4f4d9412cd66ea436d6d1966ad582700f",
         intel:        "3ceb285194091d45b150561ac5d58ab5a58cddcdc6d086f883039a652c037cfa",
         arm64_linux:  "50c305fcb8912851ce774429131d94ed6f84edbe3d8d0ed7a59dade5d893acc0",
         x86_64_linux: "a2df1f41bb00250992926420d0063f89b127cb81abdd284dbefb80c50ff1d026"

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
