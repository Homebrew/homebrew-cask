cask "capacities" do
  arch arm: "-arm64"

  version "1.44.4"
  sha256 arm:   "7102dff5183b0563e1f968d6fbf7d5dc591bd94e36a094aed96fee476b68141c",
         intel: "758f68bc49f1127626aedae7cc05c07837d7f5023f107fca4b9e0e4a2d7fbf00"

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
