cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.2-0-nightly-2026-04-16"
  sha256 arm:   "cea982004766b55eeb6365701a06ee16a57a3c7cebf1b9680ac5ae30f543c04e",
         intel: "c589ececd00e69e9ce971fe5fcd99a00d3b01fc9e137eece42a60c15bddf91a1"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :monterey"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
