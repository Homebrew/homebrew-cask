cask "capacities" do
  arch arm: "-arm64"

  version "1.72.4"
  sha256 arm:   "ff43dec82c03eb116efeaf806b24da8147342992d54ad6149e7fbc2ab7b0d34f",
         intel: "30410d1e6771d324a809189649c8e256e6155198bd19873f34cfe1aa67c33a1b"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.capacities.app.sfl*",
    "~/Library/Logs/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
