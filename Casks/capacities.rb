cask "capacities" do
  arch arm: "-arm64"

  version "1.25.31"
  sha256 arm:   "ea03c96f5c19196e8db168e0f4bc20b5e5a344882fbb274031f3b48b7ce48532",
         intel: "33781407aa67d742c109eb4f0116d18bf569410f30637d7a2447fc0bce3ee6d7"

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
