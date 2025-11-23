cask "font-playwrite-de-grund-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedegrundguides/PlaywriteDEGrundGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE Grund Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+Grund+Guides"

  font "PlaywriteDEGrundGuides-Regular.ttf"

  # No zap stanza required
end
