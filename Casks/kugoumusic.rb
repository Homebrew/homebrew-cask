cask "kugoumusic" do
  version "3.0.4"
  sha256 "bbfb1fb9fc2f16eca871749b6471f282e4e47da8053facf05b3d7f9df9dfed80"

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name "Kugou Music"
  desc "Digital music service"
  homepage "https://www.kugou.com/"

  livecheck do
    url "https://download.kugou.com/download/kugou_mac"
    strategy :header_match
  end

  app "KugouMusic.app"
end
