cask "capacities" do
  arch arm: "-arm64"

  version "1.25.30"
  sha256 arm:   "39a97bc3ce40b01dc3921698702389e97926c2489f81633be0c1690ee8fbbd20",
         intel: "da839b45409301368ce994a1274be64f86e3e0b6f0ae12e94b4376d087fff170"

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
