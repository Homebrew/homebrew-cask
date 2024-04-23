cask "capacities" do
  arch arm: "-arm64"

  version "1.36.6"
  sha256 arm:   "ad14dfb2322c1c85a8dca130da77f57e18ffa59bf2b509e7a218a3aced7b7327",
         intel: "2682fe8e4e2cbbf9bf694c3c3d33f105291aa9cf929efe2caf5b80e689ab14d0"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities/",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
