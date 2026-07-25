cask "font-lilex" do
  version "2.700"
  sha256 "34310edb4ba749f772d42b88e3eec4a6318527e75ceeaa96cfc556ee35366fbc"

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
