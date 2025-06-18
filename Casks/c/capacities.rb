cask "capacities" do
  arch arm: "-arm64"

  version "1.49.3"
  sha256 arm:   "9103d24453a31e231a10084fc5b3d74c58ef000814cd395c950cf7b423d21ae7",
         intel: "429807cc4bcd209c9a37bc59fdd95ac82c0834d5abf5532051023d7502e0c524"

  url "https://capacities-desktop-app.fra1.cdn.digitaloceanspaces.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-desktop-app.fra1.cdn.digitaloceanspaces.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-desktop-app.fra1.cdn.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
