cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.176"
  sha256 arm:          "f3f1b0c098510bd5d472b15f5541bb261f5939aeb52e488760bc53fb54c1803d",
         x86_64:       "68cc0e17ab0b741c87eba77ae097d6da49d335952cdd9ca4c3dc75d9d5496222",
         arm64_linux:  "95924cc57a03d9b3b58b262aef7f6c8719653c991c82b6b8690c7a5422690d63",
         x86_64_linux: "075bc326c19a5484c86f3ea8633cf4bf7e26ed72bf3529bc8b64a00db1c488cc"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/stable"
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
