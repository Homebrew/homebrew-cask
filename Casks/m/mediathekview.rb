cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.4.2"
  sha256 arm:   "ae589a7533bbaf606f6b4dfa84ac04348056509be0136c134014aba7e7ae2745",
         intel: "ca94fc32b302e9f707c3d3a126bb1d8f5e3ca64003fcae59013dde8616ea427b"

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
