cask "font-pyeojin-gothic" do
  version "1.3"
  sha256 "8e7b4ade193fb7be158d9245fb54b6dfd27e3425de6df4170992c1b5fbb05bcc"

  url "https://github.com/Jihwan-Suh/PyeojinGothic/releases/download/v#{version}/PyeojinGothic.v#{version}.zip"
  name "Pyeojin Gothic"
  name "펴진고딕"
  homepage "https://notforall.tistory.com/7"

  font "static/otf/PyeojinGothic-Black.otf"
  font "static/otf/PyeojinGothic-Bold.otf"
  font "static/otf/PyeojinGothic-Extrabold.otf"
  font "static/otf/PyeojinGothic-Light.otf"
  font "static/otf/PyeojinGothic-Medium.otf"
  font "static/otf/PyeojinGothic-Regular.otf"
  font "static/otf/PyeojinGothic-Semibold.otf"

  # No zap stanza required
end
