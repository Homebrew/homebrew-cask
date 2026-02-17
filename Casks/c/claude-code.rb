cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.44"
  sha256 arm:          "03cb80fe89e645f465a11b519fc31bd4295c30d33f47bd84be5a018fffd7a4c7",
         x86_64:       "ff75130b5091baeb85c2e4e1183d778b3c44079f3638f90f7bcd2a267d2181a5",
         x86_64_linux: "090ed3f06be51388bc511f90214484891432c160349c9c3fc6a131001c763381",
         arm64_linux:  "335f440cfa4c3b020e79896a00bfb68376c6efb11051c7e6736732acdc74d6ee"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
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
