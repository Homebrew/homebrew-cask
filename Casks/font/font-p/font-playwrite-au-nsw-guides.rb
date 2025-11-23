cask "font-playwrite-au-nsw-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteaunswguides/PlaywriteAUNSWGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU NSW Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+NSW+Guides"

  font "PlaywriteAUNSWGuides-Regular.ttf"

  # No zap stanza required
end
