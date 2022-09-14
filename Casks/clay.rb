cask "clay" do
  arch arm: "-arm64"

  version "1.12.0"
  sha256 arm:   "b4a113267e0b0a6113a074f310094d717d148650d614ddda8e5fddc8cffb860d",
         intel: "e91ebface86a00c72279111c2fbd7371150fc72f78bf640b68066dddf1912f3f"

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}#{arch}.dmg"
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
