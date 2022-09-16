cask "rocket" do
  version "1.9.1,82"
  sha256 "d9c3b542dce8180f0ddc614b797262c4427c382dd1a40ffc8a21fa944a86eb70"

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
