cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.393"
  sha256 arm:          "d883678ebee937fb623fc914cfab0973114065966c15c04e4909a687899d3166",
         intel:        "3b10836a090ce47e4c600c5c3c4014eb3f65a322abc2e998f78186bfffb105e7",
         arm64_linux:  "63f7196a744cab2583f5b24700685645ecace1017510a07d6083fd0f25c2379e",
         x86_64_linux: "33c66bbbffaca370801b099f6193939ea68a17e60be1dad2a32e21c7f614709e"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
