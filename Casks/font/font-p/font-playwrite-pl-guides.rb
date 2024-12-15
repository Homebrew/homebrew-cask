cask "font-playwrite-pl-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteplguides/PlaywritePLGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PL Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+PL+Guides"

  font "PlaywritePLGuides-Regular.ttf"

  # No zap stanza required
end
