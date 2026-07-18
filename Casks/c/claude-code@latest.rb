cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.214"
  sha256 arm:          "59796dd18e9d77f1256f367db6d28ce4bd9cd5968e402ad3a327aac36abc6dec",
         x86_64:       "d979ba15662828969e5d0f39f1367798a07ef6e031b524efdad37fe7caf84010",
         x86_64_linux: "3c029136f7c81f54ed4a38e9d52e655aad536433dbbde50519c8c31bb646ad14",
         arm64_linux:  "4c38f26a57a42619ee813f15dc39fc1fa4fe0bb403215c3cdc342b58fa689c3c"

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
