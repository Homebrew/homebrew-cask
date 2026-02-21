cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.50"
  sha256 arm:          "4b6c1cb5e02428dbf600d08f88c28f9ea06619001c3efebf8890365e5b79d1b7",
         x86_64:       "2215818c6e2a4fa0497ee88a19f8d84b91f0bb29cc4150a30aa775f75ba2133c",
         x86_64_linux: "74042739197c58a4791c1f67414c0d8956639ec2f2e935280872b83d4317be78",
         arm64_linux:  "4e2b23dbf2f97918d5edc95ae1de03d230a66b94d5fa31a57cc673742ec6ae22"

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
