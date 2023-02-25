cask "clay" do
  version "2.5.0"
  sha256 "b5eafda56409a7fde89f2d43b976b5d0854733beeeaaeaf1c26d9555d99e7356"

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
