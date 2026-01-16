cask "font-zxgamut" do
  version "1.002"
  sha256 "3ef5ed2a8b651a6b780353a90832270fd305316c15a922cc57c8c9f8c20d6800"

  url "https://github.com/0xType/Gamut/releases/download/#{version}/ZxGamut_#{version.dots_to_underscores}.zip"
  name "Zx Gamut"
  homepage "https://github.com/0xType/Gamut"

  font "static/ZxGamut-Black.otf"
  font "static/ZxGamut-Bold.otf"
  font "static/ZxGamut-ExtraBold.otf"
  font "static/ZxGamut-ExtraLight.otf"
  font "static/ZxGamut-Light.otf"
  font "static/ZxGamut-Medium.otf"
  font "static/ZxGamut-Regular.otf"
  font "static/ZxGamut-SemiBold.otf"
  font "static/ZxGamut-Thin.otf"

  # No zap stanza required
end
