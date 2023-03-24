cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.7"
  sha256 arm:   "1871a114eece0afd50e16e1202ed083b9a1becfbcdbc6e920902479c722e5d82",
         intel: "6652d075f92bc528a86c541e3b0bcdbbb37ae59f902056007f2f6efd8543ddc3"

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
