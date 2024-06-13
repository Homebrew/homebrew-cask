cask "font-harano-aji" do
  version "20231009"
  sha256 "27f3e553ca324fce689cc86634fcda190b4c5106cc1eaecc5a3c18ff5d16785e"

  url "https://github.com/trueroad/HaranoAjiFonts/archive/refs/tags/#{version}.zip"
  name "Harano Aji"
  name "原ノ味"
  homepage "https://github.com/trueroad/HaranoAjiFonts"

  font "HaranoAjiFonts-#{version}/HaranoAjiGothic-Bold.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiGothic-ExtraLight.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiGothic-Heavy.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiGothic-Light.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiGothic-Medium.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiGothic-Normal.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiGothic-Regular.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiMincho-Bold.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiMincho-ExtraLight.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiMincho-Heavy.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiMincho-Light.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiMincho-Medium.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiMincho-Regular.otf"
  font "HaranoAjiFonts-#{version}/HaranoAjiMincho-SemiBold.otf"

  # No zap stanza required
end
