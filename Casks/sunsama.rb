cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.8"
  sha256 arm:   "c7207df4e3f6a11e83cb85d7984659d6cbe1be567725ac4794b8caebe663b034",
         intel: "86d5ae2a95ebff7954fcfca873fbf3a1312168903aca4cb5ce66bd6b57ebad04"

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
