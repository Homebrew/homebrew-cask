cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.23"
  sha256 arm:          "a71f1f038dc95c1cc3348bc0f42381a9450c13ee15d248a35a604271b96e9002",
         intel:        "d0abea724faca27d16b8e3e5636a77c4f1ccb297acc1fc3b6a960082215f9804",
         arm64_linux:  "fc59eb876e7283e9fea06b1977651a2ab26317dd74dd16371b7253c70d29e2c5",
         x86_64_linux: "01dc4a8d986b3d6d68b36033c01042ce58c9ad57f7fd3afcbe050f45e402a25a"

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
