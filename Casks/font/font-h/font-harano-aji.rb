cask "font-harano-aji" do
  version "20231009"
  sha256 "fdfb27096b5ca3f2325cfcb676af9ed0fb84272c5b8223463c90ebd3a93bce7b"

  url "https://github.com/trueroad/HaranoAjiFonts/archive/refs/tags/#{version}.tar.gz"
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
