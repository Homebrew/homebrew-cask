cask "font-harano-aji" do
  version "20250811"
  sha256 "637c49484f6aafa0c91e85779acc266273644496fd536bfd8175571730eddcb6"

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
