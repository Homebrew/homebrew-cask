cask "clay" do
  version "2.1.8"
  sha256 "a122d84416ecf7ab6b3df631b03b3d3b834478d1d67c530469d1c2141518db8b"

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
