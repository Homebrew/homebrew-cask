cask "onecast" do
  version "1.14"
  sha256 "d93e9821c94c1ff8f9eb6470cf543ad89d9867c3139a80994e0ec6f1580642e3"

  url "https://onecast.me/downloads/OneCast.dmg"
  appcast "https://onecast.me/download/"
  name "OneCast"
  homepage "https://onecast.me/"

  auto_updates true

  app "OneCast.app"
end
