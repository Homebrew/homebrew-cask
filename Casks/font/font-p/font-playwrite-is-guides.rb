cask "font-playwrite-is-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteisguides/PlaywriteISGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IS Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IS+Guides"

  font "PlaywriteISGuides-Regular.ttf"

  # No zap stanza required
end
