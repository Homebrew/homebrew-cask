cask "mediathekview" do
  version "13.8.1"
  sha256 "1f614242ee44c81fd3b690929cb340a76d1d3cc262652a2bd4b8afc7c9a4b4a8"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-mac.dmg"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  livecheck do
    url "https://download.mediathekview.de/stabil/"
    strategy :page_match
    regex(%r{href=.*?/MediathekView-(\d+(?:\.\d+)+)-mac\.dmg}i)
  end

  app "MediathekView.app"

  zap trash: "~/Library/Caches/MediathekView"
end
