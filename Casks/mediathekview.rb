cask "mediathekview" do
  version "13.7.0"
  sha256 "fe20d561665841660af30d331a420325c4dbc809dec5c3c305b3f35f7dd1b36a"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-mac.dmg"
  appcast "https://mediathekview.de/changelog/index.xml"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  app "MediathekView.app"
end
