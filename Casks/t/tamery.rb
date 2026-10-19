cask "tamery" do
  arch arm: "arm64", intel: "x64"

  version "0.99.1"
  sha256 arm:   "7dd5935e966a4a1431c6f70e0ba216f336c215d682b44b7bedaf00e7e62aff83",
         intel: "c931529ab11e2467fe50c80e9cbafe919f9544783175cbd39c32410d5c982b59"

  url "https://download.tamery.app/versions/#{version}/mac/dmg/#{arch}"
  name "Tamery"
  desc "AI-powered database client"
  homepage "https://tamery.app/"

  livecheck do
    url "https://download.todesktop.com/2610172p48e2t/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Tamery.app"

  zap trash: [
    "~/Library/Application Support/Tamery",
    "~/Library/Caches/@tamerydesktop-updater",
    "~/Library/HTTPStorages/com.wannabespace.tamery",
    "~/Library/Preferences/com.wannabespace.tamery.plist",
    "~/Library/Saved Application State/com.wannabespace.tamery.savedState",
  ]
end
