cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.241"
  sha256 arm:          "1495eb7c42d3b4451f5f1cd38b6d498d22a4a38c802bc2be5c1cf1795e64820d",
         intel:        "cf01b8cace66485ef5b476f14d96f69af61194a38c3df8412a80eb8f1316c10d",
         arm64_linux:  "2db0cb893ebed8ef8aee46656da45bc6801fa2586293dae64abfa3ade894a2fe",
         x86_64_linux: "0771bd866cff82b76581fc0499f6529e1a36845078f144f8c81dccb3bc7037b8"

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
