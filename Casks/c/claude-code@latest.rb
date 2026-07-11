cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.207"
  sha256 arm:          "1397a062c6889675055e3314dd956376ac51262a7734ad9e819c26975d71547a",
         x86_64:       "8a4355d251a60c90d8cf08f32fdb22a8157dd3d085542f95d0da0475f9a2c57c",
         x86_64_linux: "85e7e988a392d859f90802ca21fb26e89d3c9ab527f5ed0b08df3955e34d5c83",
         arm64_linux:  "8bc14a284065383460f37981d724b8f7aa7ca93c9849d2fe367e08f03383f454"

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
