cask "font-playwrite-br-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebrguides/PlaywriteBRGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BR Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+BR+Guides"

  font "PlaywriteBRGuides-Regular.ttf"

  # No zap stanza required
end
