cask "capacities" do
  arch arm: "-arm64"

  version "1.25.33"
  sha256 arm:   "fc0a378dc69f4125de55b943d86e75c1fb5fa636bb8ba590d4d9ca14d750bc45",
         intel: "2d0859cfa1dd28a7411b98528aec643c1bbc823bbc0e453061f1089d4613b2c2"

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
