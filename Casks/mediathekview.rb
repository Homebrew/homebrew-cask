cask "mediathekview" do
  version "13.8.0"
  sha256 "a35a3fe6303cbdca6129c367192d860e54e7397d979d656d5dd1375856fb99c0"

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
