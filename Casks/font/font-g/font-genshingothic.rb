cask "font-genshingothic" do
  version "20150607,8.637"
  sha256 "b8e00f00a6e2517bfe75ceb2a732b596fe002457b89c05c181d6b71373aada58"

  url "https://osdn.dl.osdn.jp/users/#{version.csv.second.major}/#{version.csv.second.no_dots}/genshingothic-#{version.csv.first}.zip",
      verified: "osdn.jp/"
  name "Gen Shin Gothic"
  homepage "http://jikasei.me/font/genshin/"

  font "GenShinGothic-Bold.ttf"
  font "GenShinGothic-ExtraLight.ttf"
  font "GenShinGothic-Heavy.ttf"
  font "GenShinGothic-Light.ttf"
  font "GenShinGothic-Medium.ttf"
  font "GenShinGothic-Monospace-Bold.ttf"
  font "GenShinGothic-Monospace-ExtraLight.ttf"
  font "GenShinGothic-Monospace-Heavy.ttf"
  font "GenShinGothic-Monospace-Light.ttf"
  font "GenShinGothic-Monospace-Medium.ttf"
  font "GenShinGothic-Monospace-Normal.ttf"
  font "GenShinGothic-Monospace-Regular.ttf"
  font "GenShinGothic-Normal.ttf"
  font "GenShinGothic-P-Bold.ttf"
  font "GenShinGothic-P-ExtraLight.ttf"
  font "GenShinGothic-P-Heavy.ttf"
  font "GenShinGothic-P-Light.ttf"
  font "GenShinGothic-P-Medium.ttf"
  font "GenShinGothic-P-Normal.ttf"
  font "GenShinGothic-P-Regular.ttf"
  font "GenShinGothic-Regular.ttf"

  # No zap stanza required
end
