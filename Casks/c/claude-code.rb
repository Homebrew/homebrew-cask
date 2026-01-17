cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.12"
  sha256 arm:          "40be59519a84bd35eb1111aa46f72aa6b3443866d3f6336252a198fdcaefbbe5",
         x86_64:       "0eee4b46c91749480bf856f88e49b15a3e944faa9d346679c5f0c0d7fa6f2f54",
         x86_64_linux: "3fe979215489dc1b31463fadf95ed2d2d5473a9969447bb7a46431f4578847d4",
         arm64_linux:  "e214b1d3b5afd4cd2de9177359001d41a3eb98cb1e3665fe97edc592f5aa132f"

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
    "~/.claude",
    "~/.claude.json*",
    "~/.config/claude",
    "~/.local/bin/claude",
    "~/.local/share/claude",
    "~/.local/state/claude",
    "~/Library/Caches/claude-cli-nodejs",
  ]
end
