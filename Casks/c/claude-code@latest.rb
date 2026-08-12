cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.229"
  sha256 arm:          "d732f0ba0a539c58c2ffcaef06ed03b4e523726f0cb6cc27b3a5b7e7ae0a7a21",
         x86_64:       "1cb62183e9f89ea21eb4950b84896fa7101182c7dfcbbe92e7a293f0b20ba541",
         x86_64_linux: "200338139a3df04a9ad22233837d1fb53fb6dffa21cd82e47559bfaa115acc1b",
         arm64_linux:  "ba53130acbda3ddb00b3dd5641f11733867f5d837a258b7e6ccef4927cc1a509"

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
