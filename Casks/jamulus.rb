cask "jamulus" do
  version "3.5.9"
  sha256 "c11299ad62f603f70ada5f4d15c9c7cd4864db598069bf6ee19c484c24048b78"

  url "https://downloads.sourceforge.net/llcon/Jamulus-#{version}-installer-mac.dmg"
  appcast "https://sourceforge.net/projects/llcon/rss"
  name "Jamulus"
  homepage "http://llcon.sourceforge.net/"

  auto_updates true

  app "Jamulus.app"
  app "JamulusServer.app"
end
