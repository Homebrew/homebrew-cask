cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.228"
  sha256 arm:          "43484b1352cef03a08346f36ef0437755b1aad646ab9313ce187857b794b7247",
         intel:        "7852f1ae0efb64d46d77a57d8852daddc4a6ffb58aeda6267bd3f3428adc09b3",
         arm64_linux:  "2664006219497bf7021ac43156519cd42eda64ceb2a66f434ecab83e7831f942",
         x86_64_linux: "d535985e6941a3eb00179ccd7f52ceb0c6623a0305a518ebc4e6514f84a94c99"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code@latest"

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
