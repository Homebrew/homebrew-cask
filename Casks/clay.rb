cask "clay" do
  version "2.1.7"
  sha256 "947612ed2f7f36c1eee65ac96be06e1c3fecb77b2c3645ed8d3bf8430c9d26d0"

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}-universal.dmg"
  name "clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
