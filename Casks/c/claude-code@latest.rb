cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.274"
  sha256 arm:          "3509913f9d1576316c8845b88837f8fd3bbbcf26625833ac82cfb6b8985da94a",
         intel:        "b18e8c9d7666d8987a174ac65e0019f4ba6befa73d2f75c05cbe92e5093431eb",
         arm64_linux:  "2db904daea17addff9de557ba26a725916888aa7b546e2c5dd989c20d9d49ab3",
         x86_64_linux: "15e2d05148f801b5774032faad87e624ecd172e9903288bda448b892eb58fa07"

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
