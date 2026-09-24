cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.282"
  sha256 arm:          "fcfd837103965c64de34a6b9b94370d77a347ea71819715a27d5f0ef01775ea4",
         intel:        "5c34b00b5c0f3862b76011015c334e91904c4593afea7a5451e00746ad7934c1",
         arm64_linux:  "6764ffc39e9fed425a493ff61ea28506d1ba83996ce81a48d1177dbb393419c9",
         x86_64_linux: "3afe8535c0cc33f0e24f7b25dab7a1727b8b592196f8496a8bc302ba2161eed3"

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
