cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.215"
  sha256 arm:          "90608b5c5ab504e96e77365cea6203d046e291d59b2bb42cf28dcb2ccdf9dd58",
         x86_64:       "1ef5f5e56ede9f7765a9bef654ece6045dba58f48b7f5b699765375953d52b6b",
         x86_64_linux: "c1efffaaf370aa187cb6a09dd93d4e511c646899b0078476f83791b664bde7fe",
         arm64_linux:  "2b43a3d5b0787217e5d7381fad42c7314292546fe9db9eb8b9b379de90509b30"

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
