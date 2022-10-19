cask "clay" do
  version "2.0.10"
  sha256 "9c8921ee61682f4f217e5a8b677f0d5a3f1ef12eb72a813da6ed33a178b247f8"

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
