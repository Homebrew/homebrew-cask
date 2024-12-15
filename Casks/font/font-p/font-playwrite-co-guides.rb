cask "font-playwrite-co-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecoguides/PlaywriteCOGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CO Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CO+Guides"

  font "PlaywriteCOGuides-Regular.ttf"

  # No zap stanza required
end
