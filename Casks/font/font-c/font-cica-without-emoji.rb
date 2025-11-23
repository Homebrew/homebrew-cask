cask "font-cica-without-emoji" do
  version "5.0.3"
  sha256 "e14c95c8c3e98d3778632f577a2cafa69ee82cd8c2efdb1f38c821e37c487dbf"

  url "https://github.com/miiton/Cica/releases/download/v#{version}/Cica_v#{version}_without_emoji.zip"
  name "Cica without emoji"
  homepage "https://github.com/miiton/Cica"

  font "Cica-Bold.ttf"
  font "Cica-BoldItalic.ttf"
  font "Cica-Regular.ttf"
  font "Cica-RegularItalic.ttf"

  # No zap stanza required
end
