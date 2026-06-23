cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.178"
  sha256 arm:          "473495d0c15d6616cd0870480db5eb8aa0402fe4f8ead3277a1b521e94110309",
         x86_64:       "e6c5f5eec2b4d18f6234c3ba500e285f07a2e5ffb4c67d4ba0494c28c70dfe79",
         arm64_linux:  "8e57484f5c08093117cfe6225529f8977877eea04bb3463f4e228aa7438349b3",
         x86_64_linux: "17ed1a983a49404c4673de286419a8fd6617c92440a2e0f789bcc413a3b14de1"

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
