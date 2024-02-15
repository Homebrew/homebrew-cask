cask "rocket" do
  version "1.9.3,85"
  sha256 "02aff7ebf6615624adb7b20106ed1d2fd887a48d9b0e918e133b166ebf64863e"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Rocket-#{version.csv.second}.dmg"
  name "Rocket"
  desc "Emoji picker optimised for blind people"
  homepage "https://matthewpalmer.net/rocket/"

  livecheck do
    url "https://macrelease.matthewpalmer.net/distribution/appcasts/rocket.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Rocket.app"

  uninstall quit: "net.matthewpalmer.Rocket"

  zap trash: [
    "/Users/Shared/Rocket",
    "~/Library/Application Support/Rocket",
    "~/Library/Caches/net.matthewpalmer.Rocket",
    "~/Library/Preferences/net.matthewpalmer.Rocket.plist",
  ]
end
