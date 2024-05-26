cask "font-playwrite-fr-moderne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrmoderne/PlaywriteFRModerne%5Bwght%5D.ttf"
  name "Playwrite FR Moderne"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteFRModerne[wght].ttf"

  # No zap stanza required
end
