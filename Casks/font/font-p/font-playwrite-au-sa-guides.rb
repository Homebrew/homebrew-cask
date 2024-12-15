cask "font-playwrite-au-sa-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteausaguides/PlaywriteAUSAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU SA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+SA+Guides"

  font "PlaywriteAUSAGuides-Regular.ttf"

  # No zap stanza required
end
