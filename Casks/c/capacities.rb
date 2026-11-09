cask "capacities" do
  arch arm: "-arm64"

  version "1.73.1"
  sha256 arm:   "2dba1af3a8a82e0af9fdbbd75d859e7ad7d2d95fe3505f1846f3f2a7c6b4b30c",
         intel: "e9f0ed43ed24085f3d10643186b2e207a35f7783d29db5435ee3946f4e2b7d40"

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
