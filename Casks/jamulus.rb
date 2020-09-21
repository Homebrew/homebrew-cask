cask "jamulus" do
  version "3.5.11"
  sha256 "6aed7335fc97f709e5e494d5a1ae909203026a33011dd6d88c76ce3d8dac025e"

  url "https://downloads.sourceforge.net/llcon/Jamulus-#{version}-installer-mac.dmg"
  appcast "https://sourceforge.net/projects/llcon/rss"
  name "Jamulus"
  homepage "http://llcon.sourceforge.net/"

  auto_updates true

  app "Jamulus.app"
  app "JamulusServer.app"
end
