cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.4.0"
  sha256 arm:   "de9c12433d2c7d753e12eb3ff46f90d43530bfb62366af18aa9afac2232eb89b",
         intel: "95ebce03f861159ac2dd91056ca5dec02cf32d13df94475aafa6e84216af58ab"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-#{arch}.dmg"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  livecheck do
    url "https://download.mediathekview.de/stabil/"
    regex(%r{href=.*?/MediathekView-(\d+(?:\.\d+)+)-#{arch}\.dmg}i)
  end

  app "MediathekView.app"

  zap trash: "~/Library/Caches/MediathekView"
end
