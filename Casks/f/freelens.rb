cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.0"
  sha256 arm:   "929527cfff7e9faa5c024e2daf1f12f4842ca7fd996915cf27373c9e78de57f3",
         intel: "0c71a8345a4205270472615efcb4afc056ab78c8a848f4fa9f020b569bd90072"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
