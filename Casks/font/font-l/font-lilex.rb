cask "font-lilex" do
  version "2.610"
  sha256 "894d0d2c8cb4c001450434989a3a3bb63290f88d462758594e4701cb178f6063"

  url "https://github.com/mishamyrt/Lilex/releases/download/#{version}/Lilex.zip"
  name "Lilex"
  homepage "https://github.com/mishamyrt/Lilex"

  font "ttf/Lilex-Bold.ttf"
  font "ttf/Lilex-BoldItalic.ttf"
  font "ttf/Lilex-ExtraLight.ttf"
  font "ttf/Lilex-ExtraLightItalic.ttf"
  font "ttf/Lilex-Italic.ttf"
  font "ttf/Lilex-Medium.ttf"
  font "ttf/Lilex-MediumItalic.ttf"
  font "ttf/Lilex-Regular.ttf"
  font "ttf/Lilex-Thin.ttf"
  font "ttf/Lilex-ThinItalic.ttf"
  font "variable/Lilex-Italic[wght].ttf"
  font "variable/Lilex[wght].ttf"

  # No zap stanza required
end
