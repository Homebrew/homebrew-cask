cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.10"
  sha256 arm:          "920efac66dd43d7259f226f3eb6acb5e38062069e96933b4e8b09c3e5b4f9617",
         intel:        "5dad4d662feb9fbb8fa0596cd9f8837fa0fb234cd5a992b13f2be5eab0d02e75",
         arm64_linux:  "2bdeddf816f63a39a3b129278770af19dd371392424260a52d10c44c68774751",
         x86_64_linux: "b9b8a67a023f3923a76a6819a11d069293a0ff1209a04588c4f3d048c03c7328"

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
