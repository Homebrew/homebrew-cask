cask "font-lilex" do
  version "2.620"
  sha256 "8765edd4720e961e30c072b76e0e61c725b18bf5bc19632246469617b7e19e05"

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
