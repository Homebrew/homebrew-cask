cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.8.5"

  if Hardware::CPU.intel?
    sha256 "da1075ac457e0b2fb887522a8f9b28257303e56aa2d56ba8f14096fe4c098544"
  else
    sha256 "81237561fc9f5ff86c68baf1ea3156e3c238529799214964e6ecc556ef232c77"
  end

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
