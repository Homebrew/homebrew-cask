cask "font-cochineal" do
  version :latest
  sha256 :no_check

  url "http://mirrors.ctan.org/fonts/cochineal.zip"
  name "Cochineal"
  homepage "https://ctan.org/pkg/cochineal"

  font "cochineal/opentype/Cochineal-Bold.otf"
  font "cochineal/opentype/Cochineal-BoldItalic.otf"
  font "cochineal/opentype/Cochineal-Italic.otf"
  font "cochineal/opentype/Cochineal-Roman.otf"

  # No zap stanza required
end
