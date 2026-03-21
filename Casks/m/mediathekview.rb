cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.5.0"
  sha256 arm:   "21f269571bea732fbd478095cba64e74e40507a7e758d932d8e11f73585de07c",
         intel: "4f7660c4bda8df608590e2bdf1c2d2fa315ff6907d617d68206eebc5aa9d6d45"

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
