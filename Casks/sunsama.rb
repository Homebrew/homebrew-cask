cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "f49c1786cf25ce350b077a2ea03e58e8a9ae02ebd092eceee0e6ff74f53d4ed6",
         intel: "3a2fca66fe42971e7d817cd5781e6d657a48e8b12044b355b350278b7d379d4b"

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
