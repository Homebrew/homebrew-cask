cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.283"
  sha256 arm:          "d8cb1e5c79684cc12a8bfc813e3a2073406921b6245744b3009be3ab5651d21e",
         intel:        "c896d2aee12ff4d95861033d9730d3d22dc19e4f32779134d3399ef3dfb0e77a",
         arm64_linux:  "346d294f0103d6fc0de11ac953579b5c62dfa90698a4cfc486b6f927c615e697",
         x86_64_linux: "1859583ce32920595c61ef868bee52e1b1594f7486db209935e01f1e5e804ae2"

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
