cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.3.0"
  sha256 arm:   "4505c9e856a445e068e2f1bb19e0ea4e295c0ea3e4e2a528a35abbac808ed117",
         intel: "ffe535d2860730774a3582634cc659d776404cc8bfdf1a45d272fd119b60ece0"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-#{arch}.dmg"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  livecheck do
    url "https://download.mediathekview.de/stabil/"
    regex(%r{href=.*?/MediathekView-(\d+(?:\.\d+)+)-#{arch}\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "MediathekView.app"

  zap trash: "~/Library/Caches/MediathekView"
end
