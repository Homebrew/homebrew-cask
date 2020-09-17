cask "jamulus" do
  version "3.5.10"
  sha256 "4f891976d3499f4511752c625b48e05751d561aaca7bed1601240560e81de1c8"

  url "https://downloads.sourceforge.net/llcon/Jamulus-#{version}-installer-mac.dmg"
  appcast "https://sourceforge.net/projects/llcon/rss"
  name "Jamulus"
  homepage "http://llcon.sourceforge.net/"

  auto_updates true

  app "Jamulus.app"
  app "JamulusServer.app"
end
