cask "kugoumusic" do
  version "3.0.8"
  sha256 "6e2a87e8bb3e3c102c4fbaf31ba97cbfb290f4fd5e23fb813a7e1c3ed35bc7a2"

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
