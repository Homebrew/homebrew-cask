cask "rocket" do
  version "1.8,74"
  sha256 "ef4feada7ea68a5b2abf247305a26471d133b573c396d47ad21f919d420b635a"

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
