cask "mediathekview" do
  version "13.7.1"
  sha256 "4e9cc25d62b6fe4420da6b881c41d067beef6f4c3beeae47a9ce66331a97f14c"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-mac.dmg"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  livecheck do
    url "https://download.mediathekview.de/stabil/"
    strategy :page_match
    regex(%r{href=.*?/MediathekView-(\d+(?:\.\d+)*)-mac\.dmg}i)
  end

  app "MediathekView.app"
end
