cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "13.9.1"
  sha256 arm:   "4eb0e2de15f1852b66ac16b84b6fdba1c3dfc18e19a646763c4e636a7c7932b0",
         intel: "4529bbed37b3736623b5083e99088866bfec98973383df2553c27175738072a9"

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
