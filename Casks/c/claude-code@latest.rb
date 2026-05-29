cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.156"
  sha256 arm:          "9c1e8601031f5cbb3101e49dda22bf8ba31183692c705e267a6923585fa2ba09",
         x86_64:       "ccd608c694677324e24dec7d1253b51f887a7be838cdb75b22d5362c97351107",
         x86_64_linux: "6d83cd2264450c5e54fc988be1032c288cf418ee604294acfb8fc4ac28f5f7a3",
         arm64_linux:  "7ed95d0a93aeb40e2b98e234b760d9295b7044ef678c62db8d1f5e14bfd57878"

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
