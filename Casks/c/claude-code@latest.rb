cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.162"
  sha256 arm:          "2d407dd2a63243ac900f64331589b9fcd29a2159a73289070af685f4085a17d2",
         x86_64:       "53f2749bf24e5a80b23b017d0877f61c9894a3c06222141515b37a94c6051d41",
         x86_64_linux: "947a49b0de8688f6a74a6e753c24771ff3ddd17b2a6dae85f36304ec514e61d1",
         arm64_linux:  "eca2a603dfebc3426a8469cbe797f9df95245738bc1c20ec842fc8f80af4010d"

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
