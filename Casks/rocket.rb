cask "rocket" do
  version "1.7.4,69"
  sha256 "af589098cad82a5e84a9212410d4b98cd2904ad38472c8feb5291374aca33971"

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
