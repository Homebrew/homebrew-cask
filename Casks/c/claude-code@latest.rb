cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.307"
  sha256 arm:          "5b113a7752119470f1da419cb0e608af3361cae25b614216b13022093958fb2a",
         intel:        "f569c691f072acf92d3e11ca46c8de34a267157f3c80f3a3e6b5267478f52dfe",
         arm64_linux:  "1c67968ab8410c9644e2f4867167a0dab1a8c6c9de9cc83fe78449e5ae8a3633",
         x86_64_linux: "6021eb72d20d0682b720bdc63acd2a5cd2270895d1f10d9ca2a88cbfa7b9dd0e"

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
