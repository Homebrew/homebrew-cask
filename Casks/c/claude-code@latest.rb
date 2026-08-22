cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.240"
  sha256 arm:          "8917e01c99ea0ce6ed887a1729a4cda693c758fe542747be71756987b145c772",
         intel:        "244a4aa164f81ad15502bc64db4653c0025d551ecbb197910ce243b3cba115a9",
         arm64_linux:  "72be65c43d1db48e91abbe65254037f29fb7887d846a3890dcd4890b00265493",
         x86_64_linux: "1386169da77de19a655f07a86ab80f5775983a50eb0c9c27a7daf16e7320322d"

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
