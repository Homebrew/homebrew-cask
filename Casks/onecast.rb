cask "onecast" do
  version "1.14,20"
  sha256 :no_check

  url "https://onecast.me/downloads/OneCast.dmg"
  appcast "https://onecast.me/download/"
  name "OneCast"
  homepage "https://onecast.me/"

  auto_updates true

  app "OneCast.app"
end
