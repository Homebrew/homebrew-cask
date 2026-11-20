cask "font-playwrite-fr-trad-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrtradguides/PlaywriteFRTradGuides-Regular.ttf"
  name "Playwrite FR Trad Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Trad+Guides"

  font "PlaywriteFRTradGuides-Regular.ttf"

  zap :not_required
end
