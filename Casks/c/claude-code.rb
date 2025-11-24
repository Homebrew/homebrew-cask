cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.51"
  sha256 arm:          "5c1a45b0e9793034df03e3a480fc9b388b554491d863d33e8c2d47312880580b",
         x86_64:       "b1bbd28a5ca33c1a411cb5376888485883ef913717e6e80179ac59ce8b6d0f9a",
         x86_64_linux: "1e05cb6a6fd29b87c12a023231de65ed0b0ecdf43afb6fda88271f27949b72e4",
         arm64_linux:  "9752961c3bcb9f319eec9c308cdcce5bbbdd686288a2c952013768386107a574"

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
    "~/.claude",
    "~/.claude.json*",
    "~/.config/claude",
    "~/.local/bin/claude",
    "~/.local/share/claude",
    "~/.local/state/claude",
    "~/Library/Caches/claude-cli-nodejs",
  ]
end
