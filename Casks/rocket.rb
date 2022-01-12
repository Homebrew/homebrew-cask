cask "rocket" do
  version "1.8.2,79"
  sha256 "9ffc8acbf0bcc5075556d16574cac8f0c8f383b10cd047bbdf58a923b19fdc74"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Rocket-#{version.csv.second}.dmg"
  name "Rocket"
  desc "Emoji picker optimized for blind people"
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
