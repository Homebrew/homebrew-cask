cask "font-playwrite-fr-trad-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrtradguides/PlaywriteFRTradGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite FR Trad Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Trad+Guides"

  font "PlaywriteFRTradGuides-Regular.ttf"

  # No zap stanza required
end
