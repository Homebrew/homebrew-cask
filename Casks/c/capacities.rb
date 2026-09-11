cask "capacities" do
  arch arm: "-arm64"

  version "1.70.2"
  sha256 arm:   "5ed2bc3a36343916214b9bcb88daeb252ea191c500aa00ef386fdb7c87b64e86",
         intel: "2adf7a2c35c3f9358c8a3083f59138c6c2a85f5d185536218f2265d204302b43"

  url "https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-#{version}#{arch}.dmg"
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
