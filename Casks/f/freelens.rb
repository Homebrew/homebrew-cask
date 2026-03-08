cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1"
  sha256 arm:   "8c247fca9a864e9f2cc22d5bf61826e225a31a8280da95b49aac45f102736159",
         intel: "e1be31cebe2c84405886a43e35969ec38652ab727975e9f928f27b5fc5294c9f"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: ">= :monterey"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
