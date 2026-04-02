cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.16"
  sha256 arm:          "a7dc8b00500fe10693c35e312042b01158f4337f5cdcb6a7968ab8344c836f15",
         intel:        "46c1fe95b9e445252bc261b81bc5279117e5c4053ed04cc5f3864b0c32664b4c",
         arm64_linux:  "e8c234fe18535661179d2f865389ff99711df4366f8e9e7cb0d7257c501bf5d0",
         x86_64_linux: "b7142f2d3448df20ea9f2aa8635786936fa2ac0f1cd7824f574220250c1f1383"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
