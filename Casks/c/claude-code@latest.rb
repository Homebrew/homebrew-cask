cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.260"
  sha256 arm:          "3c269f66801028823e24a63ced9fdd3988cb86cf85fccd9f03f87e463b9d3e3c",
         intel:        "2d791b1bff2bc36419de09e1f2226c076b40b0717ee43108928938f622ea9b77",
         arm64_linux:  "9811afb5f97224c2c5d3d0ee1e8c316117d298d5ec3e095d5ff0c1dd0e889ca5",
         x86_64_linux: "7a2fdc74b6836ea3d183f665b869f0ee3baebc9713cbebffe5838da4ea7bd82e"

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
