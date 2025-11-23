cask "font-playwrite-au-vic-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteauvicguides/PlaywriteAUVICGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU VIC Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+VIC+Guides"

  font "PlaywriteAUVICGuides-Regular.ttf"

  # No zap stanza required
end
