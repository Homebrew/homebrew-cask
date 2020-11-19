cask "rocket" do
  version "1.8.1,76"
  sha256 "51d336db983f38e3f1753d436b2ad79eaef6a362185d3b15ed7faa5ac6d15b03"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Rocket-#{version.after_comma}.dmg"
  appcast "https://macrelease.matthewpalmer.net/distribution/appcasts/rocket.xml"
  name "Rocket"
  desc "Emoji picker optimized for blind people"
  homepage "https://matthewpalmer.net/rocket/"

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
