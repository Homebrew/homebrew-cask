cask "capacities" do
  arch arm: "-arm64"

  version "1.65.8"
  sha256 arm:   "e840ba0d69247c4267d0a98fe642ee65902c919f81f79ba230fea414b22cb313",
         intel: "788eab4fe8cf8e0355d8c722f7d707c9624b61de826e5ee34744d8964c304d56"

  url "https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-#{version}#{arch}.dmg",
      verified: "2vks4.upcloudobjects.com/capacities-desktop-app/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://2vks4.upcloudobjects.com/capacities-desktop-app/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
