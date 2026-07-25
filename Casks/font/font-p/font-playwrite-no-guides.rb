cask "font-playwrite-no-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenoguides/PlaywriteNOGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NO Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NO+Guides"

  font "PlaywriteNOGuides-Regular.ttf"

  # No zap stanza required
end
