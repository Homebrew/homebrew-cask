cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.166"
  sha256 arm:          "9009a6d88ef31334861f9b9683b9938d5c02aa2dd7adbb6a01a0a5f5924a35d7",
         x86_64:       "40c3d5d1ad40ee708403ce4ed940a7c9a61137388d1b0cceb22e6eff7182e7c7",
         x86_64_linux: "05940089ec785aaf2612ff95370160b01f51ba5d9660827c51dbdfcaf239653e",
         arm64_linux:  "7699c8bc0cae36cacbf3ccd96acd5f538787b0191b98245a2189be6405f1dd88"

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
