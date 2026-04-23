cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.108"
  sha256 arm:          "8d66163313976b0045b829e37eb3fcccb10ce6fd7e04a6db85d2c3915ff8aaec",
         x86_64:       "9e19adaae3709ce5917d8bf2faa669f560459bf240a2054de4e5e89babd0546a",
         arm64_linux:  "7bef1f7dcf64a221fc66571a176ca6206088bec48613a46cb4fa6328169c0bd1",
         x86_64_linux: "1f641676eb086ceafd76a5f51ffb260b948fa1f6d77991d8cd6e480267dfff37"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
