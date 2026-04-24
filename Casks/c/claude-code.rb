cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.109"
  sha256 arm:          "cc7e26eb08521a5315094a522775c7f17bdeef2d6d8d9040205af6d2e6dee595",
         x86_64:       "533c0834474a123af9989576d733d4e1d51f67ebeca828d426f25d0eae28f317",
         arm64_linux:  "6ab80a11e590553ad8cdb8d5d93df93fba1caae329b48f453b1af9c94b4493db",
         x86_64_linux: "d40d4c9eff224be6ba3586fd1b05acc3c8b3266998d67488a259ddcb82a6be5f"

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
