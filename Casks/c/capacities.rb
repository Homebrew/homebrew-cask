cask "capacities" do
  arch arm: "-arm64"

  version "1.42.2"
  sha256 arm:   "2b7db48b477ffff99ac164c0c72dc6c74365c030fcc015da2d2489eefe243260",
         intel: "e656fb15c810b53f000b8db6c7c6f49e125ffb66ff0ceb3e89256544c9484734"

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
