cask "capacities" do
  arch arm: "-arm64"

  version "1.25.20"
  sha256 arm:   "9e33e0fcf8103d6c602d7d400c6f24e6d34579252482e07b1ae901296e0d4a8c",
         intel: "de0e593608e95a0c855c185d2da9d9d1b869146d61ee99fb4e8a5fea8028f372"

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
