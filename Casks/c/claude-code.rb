cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.187"
  sha256 arm:          "a59a16ba4922adab7a145728f215d042184d349f5f7e72cddb7fc114250a4ce3",
         x86_64:       "7f57b6935b4246d03cb7acee90dc22153083483a267da589c5c920dd04744c36",
         arm64_linux:  "b49be8a5e565bf2d45b50d2de62017b25462131acc9425d2fdb98b8f29c9dce2",
         x86_64_linux: "bb02fcb33626f8c599d10d8bee38585d4cf8d4225c3b497869dee7454e7bf361"

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
