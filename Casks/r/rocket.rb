cask "rocket" do
  version "1.9.5,88"
  sha256 "a6050156f5cf583fdd8d7f2714967d0d06f9547f91ef9d3ba094f076e0a58c34"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Rocket-#{version.csv.second}.dmg"
  name "Rocket"
  desc "Emoji picker optimised for blind people"
  homepage "https://matthewpalmer.net/rocket/"

  livecheck do
    url "https://macrelease.matthewpalmer.net/distribution/appcasts/rocket.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Rocket.app"

  uninstall quit: "net.matthewpalmer.Rocket"

  zap trash: [
    "/Users/Shared/Rocket",
    "~/Library/Application Support/Rocket",
    "~/Library/Caches/net.matthewpalmer.Rocket",
    "~/Library/Preferences/net.matthewpalmer.Rocket.plist",
  ]
end
