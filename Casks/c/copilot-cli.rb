cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.6"
  sha256 arm:          "703dc602be9b97ef42c451a38d8f38e2c01c0e855d93cec7a6e51da549aa0fee",
         intel:        "c68c10e50c1e5016c780d5749fb641703c6719e8cd3e7335f6f79695975a3662",
         arm64_linux:  "5a7c6ce689ae7a45e10f519ae0e7805c0f8fecbc32bea58e0fb753b45d4dc85a",
         x86_64_linux: "8d0b1bfb76793419ed9c3090ef47e058b60c254c60f2e76dc006d6c84e8c9473"

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
