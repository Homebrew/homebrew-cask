cask "rocket" do
  version "1.9.4,87"
  sha256 "8f09928a04d670a6639d1eae534c0833a406a71eea3faf090262e9860ecec0e4"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Rocket-#{version.csv.second}.dmg"
  name "Rocket"
  desc "Emoji picker optimised for blind people"
  homepage "https://matthewpalmer.net/rocket/"

  livecheck do
    url "https://macrelease.matthewpalmer.net/distribution/appcasts/rocket.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Rocket.app"

  uninstall quit: "net.matthewpalmer.Rocket"

  zap trash: [
    "/Users/Shared/Rocket",
    "~/Library/Application Support/Rocket",
    "~/Library/Caches/net.matthewpalmer.Rocket",
    "~/Library/Preferences/net.matthewpalmer.Rocket.plist",
  ]
end
