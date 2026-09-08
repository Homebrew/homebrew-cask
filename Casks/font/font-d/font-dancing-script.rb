cask "font-dancing-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dancingscript/DancingScript%5Bwght%5D.ttf"
  name "Dancing Script"
  homepage "https://fonts.google.com/specimen/Dancing+Script"

  font "DancingScript[wght].ttf"

  # No zap stanza required
end
