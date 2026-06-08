cask "font-playwrite-us-trad-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteustradguides/PlaywriteUSTradGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite US Trad Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+US+Trad+Guides"

  font "PlaywriteUSTradGuides-Regular.ttf"

  # No zap stanza required
end
