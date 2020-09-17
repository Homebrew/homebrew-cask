cask "mediathekview" do
  version "13.6.0"
  sha256 "76a4600190df7ff145f3cf97747f376d9f45318b083a83dbd099b7522b6749f4"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-mac.dmg"
  appcast "https://mediathekview.de/changelog/index.xml"
  name "MediathekView"
  homepage "https://mediathekview.de/"

  suite "MediathekView"
end
