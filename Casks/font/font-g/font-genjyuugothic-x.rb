cask "font-genjyuugothic-x" do
  version "20150607,8.644"
  sha256 "e4a0ea11b8155056ad2b678c8501b2e76dd99b8c8eb5363d396fe7c3079201b3"

  url "https://osdn.dl.osdn.jp/users/#{version.csv.second.major}/#{version.csv.second.no_dots}/genjyuugothic-x-#{version.csv.first}.zip",
      verified: "osdn.jp/"
  name "Gen Jyuu GothicX"
  homepage "http://jikasei.me/font/genjyuu/"

  font "GenJyuuGothicX-Bold.ttf"
  font "GenJyuuGothicX-ExtraLight.ttf"
  font "GenJyuuGothicX-Heavy.ttf"
  font "GenJyuuGothicX-Light.ttf"
  font "GenJyuuGothicX-Medium.ttf"
  font "GenJyuuGothicX-Monospace-Bold.ttf"
  font "GenJyuuGothicX-Monospace-ExtraLight.ttf"
  font "GenJyuuGothicX-Monospace-Heavy.ttf"
  font "GenJyuuGothicX-Monospace-Light.ttf"
  font "GenJyuuGothicX-Monospace-Medium.ttf"
  font "GenJyuuGothicX-Monospace-Normal.ttf"
  font "GenJyuuGothicX-Monospace-Regular.ttf"
  font "GenJyuuGothicX-Normal.ttf"
  font "GenJyuuGothicX-P-Bold.ttf"
  font "GenJyuuGothicX-P-ExtraLight.ttf"
  font "GenJyuuGothicX-P-Heavy.ttf"
  font "GenJyuuGothicX-P-Light.ttf"
  font "GenJyuuGothicX-P-Medium.ttf"
  font "GenJyuuGothicX-P-Normal.ttf"
  font "GenJyuuGothicX-P-Regular.ttf"
  font "GenJyuuGothicX-Regular.ttf"

  # No zap stanza required
end
