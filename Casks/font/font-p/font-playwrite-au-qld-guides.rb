cask "font-playwrite-au-qld-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteauqldguides/PlaywriteAUQLDGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU QLD Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+QLD+Guides"

  font "PlaywriteAUQLDGuides-Regular.ttf"

  # No zap stanza required
end
