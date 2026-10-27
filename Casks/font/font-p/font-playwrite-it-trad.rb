cask "font-playwrite-it-trad" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteittrad/PlaywriteITTrad%5Bwght%5D.ttf"
  name "Playwrite IT Trad"
  homepage "https://fonts.google.com/specimen/Playwrite+IT+Trad"

  font "PlaywriteITTrad[wght].ttf"

  zap :not_required
end
