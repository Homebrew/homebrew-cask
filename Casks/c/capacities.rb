cask "capacities" do
  arch arm: "-arm64"

  version "1.43.2"
  sha256 arm:   "abffa9c9841d9b3bb981bb965e83941d647b3633e8d7efc8328d5a681accbb7a",
         intel: "1c0cd617b5ad5916eb8ada90e728528854ca318304a280ec154d096c340419d0"

  url "https://capacities-frontend-app.s3.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.amazonaws.com/latest-mac.yml"
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
