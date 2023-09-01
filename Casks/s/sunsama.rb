cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.12"
  sha256 arm:   "0aa2b2cd5feb6975fd99ef8a5d01beb74de384940375e475a75593b28ad19e5a",
         intel: "df5b18e7b4423650fb1de95b3064dc708b158658743c4c25c32ce7ce20cbe69e"

  url "https://download.todesktop.com/2003096gmmnl0g1/Sunsama%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/2003096gmmnl0g1/"
  name "Sunsama"
  desc "Daily planner and calendar"
  homepage "https://www.sunsama.com/desktop"

  livecheck do
    url "https://download.todesktop.com/2003096gmmnl0g1/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Sunsama.app"

  zap trash: [
    "~/Library/Application Support/Sunsama",
    "~/Library/Logs/Sunsama",
    "~/Library/Preferences/com.sunsama.native-app.plist",
    "~/Library/Saved Application State/com.sunsama.native-app.savedState",
  ]
end
