cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.190"
  sha256 arm:          "1fa59529c233914fdd9d42816a74ecf300eefa14c3d118d4ecba2f0f16fc5741",
         x86_64:       "4eca48431a43c5540c53657964be604f301d38c02b244ca7c05da18f84bb5c85",
         x86_64_linux: "0684e28517cc785ab8d19feb5dad3381eab4abc97bf6fce07bc534dc88040b27",
         arm64_linux:  "e7305203e7d78a6bfecb94f7973b0ee4a71a3ba67c8028c98b293cf571900b68"

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
