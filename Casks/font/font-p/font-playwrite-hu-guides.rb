cask "font-playwrite-hu-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehuguides/PlaywriteHUGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HU Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+HU+Guides"

  font "PlaywriteHUGuides-Regular.ttf"

  # No zap stanza required
end
