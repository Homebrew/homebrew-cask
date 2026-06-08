cask "font-genjyuugothic-l" do
  version "20150607"
  sha256 "d2fccec290232df110d1116fef4411416875acf7647084c9ab7d7eb5e8a80c50"

  url "https://ftp.iij.ad.jp/pub/osdn.jp/users/8/8643/genjyuugothic-l-#{version}.zip",
      verified: "ftp.iij.ad.jp/pub/osdn.jp/users/"
  name "Gen Jyuu GothicL"
  homepage "http://jikasei.me/font/genjyuu/"

  livecheck do
    url :homepage
    regex(/href=.*genjyuugothic-l[._-]v?(\d+(?:\.\d+)*)\.zip"/i)
  end

  font "GenJyuuGothicL-Bold.ttf"
  font "GenJyuuGothicL-ExtraLight.ttf"
  font "GenJyuuGothicL-Heavy.ttf"
  font "GenJyuuGothicL-Light.ttf"
  font "GenJyuuGothicL-Medium.ttf"
  font "GenJyuuGothicL-Monospace-Bold.ttf"
  font "GenJyuuGothicL-Monospace-ExtraLight.ttf"
  font "GenJyuuGothicL-Monospace-Heavy.ttf"
  font "GenJyuuGothicL-Monospace-Light.ttf"
  font "GenJyuuGothicL-Monospace-Medium.ttf"
  font "GenJyuuGothicL-Monospace-Normal.ttf"
  font "GenJyuuGothicL-Monospace-Regular.ttf"
  font "GenJyuuGothicL-Normal.ttf"
  font "GenJyuuGothicL-P-Bold.ttf"
  font "GenJyuuGothicL-P-ExtraLight.ttf"
  font "GenJyuuGothicL-P-Heavy.ttf"
  font "GenJyuuGothicL-P-Light.ttf"
  font "GenJyuuGothicL-P-Medium.ttf"
  font "GenJyuuGothicL-P-Normal.ttf"
  font "GenJyuuGothicL-P-Regular.ttf"
  font "GenJyuuGothicL-Regular.ttf"

  # No zap stanza required
end
