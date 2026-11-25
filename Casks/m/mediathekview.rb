cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "15.0.0"
  sha256 arm:   "15030eb6c4c24081505072b265a6307db3ea489751f85fa739c7543e08e60852",
         intel: "97e3aceaec842dc98defd83699ccb51f27f003c96e58abc7c9a619f1d75cea28"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-#{arch}.dmg"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  livecheck do
    url "https://download.mediathekview.de/stabil/"
    regex(%r{href=.*?/MediathekView-(\d+(?:\.\d+)+)-#{arch}\.dmg}i)
  end

  depends_on :macos

  app "MediathekView.app"

  zap trash: "~/Library/Caches/MediathekView"
end
