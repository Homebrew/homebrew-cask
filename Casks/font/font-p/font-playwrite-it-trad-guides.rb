cask "font-playwrite-it-trad-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteittradguides/PlaywriteITTradGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IT Trad Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IT+Trad+Guides"

  font "PlaywriteITTradGuides-Regular.ttf"

  # No zap stanza required
end
