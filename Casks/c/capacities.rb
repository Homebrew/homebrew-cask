cask "capacities" do
  arch arm: "-arm64"

  version "1.26.41"
  sha256 arm:   "1447eb79dc629bf8564ed9c9c7f4a7e6562ebf7626568f61cb4e229cea75f0d8",
         intel: "f950a67757eb008596b3c13bd8a2444b9a4076cc3a1b07c15d4d59cea8c68b23"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organize your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
