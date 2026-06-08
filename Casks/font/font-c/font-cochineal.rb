cask "font-cochineal" do
  version "1.085"
  sha256 :no_check

  url "https://mirrors.ctan.org/fonts/cochineal.zip"
  name "Cochineal"
  homepage "https://ctan.org/pkg/cochineal"

  livecheck do
    url :homepage
    regex(/Version.*?v?(\d+(?:\.\d+)+)/i)
  end

  font "cochineal/opentype/Cochineal-Bold.otf"
  font "cochineal/opentype/Cochineal-BoldItalic.otf"
  font "cochineal/opentype/Cochineal-Italic.otf"
  font "cochineal/opentype/Cochineal-Roman.otf"

  # No zap stanza required
end
