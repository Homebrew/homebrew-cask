cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.232"
  sha256 arm:          "7b39c1588df919d001dea3ffd5651adb682f2451b5a0e18d42d4233296b53cc7",
         x86_64:       "aa3d606d7bf0ea9739a6d0de11810e72a662e7a4e5061d67ee7f8bc47c8890f9",
         x86_64_linux: "61d23f8749136907d586d5b11831ea8a5234d4c1dea40a5e55c33b52e204c6d1",
         arm64_linux:  "20797ebc644dfc47a69865c46d5cf702c7dbedd48d4268063b8828ebd55b39d0"

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
