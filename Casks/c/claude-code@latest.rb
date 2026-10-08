cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.294"
  sha256 arm:          "def0d15e64dd7d89621f88d28214f885b1c38b0ddd69762fb8593e34915d6d53",
         intel:        "b4f8a4a7a43b53ff1cd639d83bd070e8af8725d9cb51abd257a9c611ce6c7274",
         arm64_linux:  "e5d2df19f30a6d63bf11188121f7edb2775249b57352a69269509a4b1496e763",
         x86_64_linux: "27122ca7b624f537546fbef35b80c66370d974ff258f3d9b10ac50bb8771f262"

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
