cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.309"
  sha256 arm:          "5eadc0009cdcdbc0d06e58110d7b2baf88ced6088b1c33a60a21217fe410619c",
         intel:        "200e0d775ae55c040db3bb8db8de3e22efcddbd7e0abff5ab50dd10f6853425d",
         arm64_linux:  "9796dd26899337f687739a0b39a7353b639f062a3436a7b941fcf19a1b757a9b",
         x86_64_linux: "4d704a8aecbe038affa3000f498ae17c1b4f753add8facb8764120affc99b658"

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
