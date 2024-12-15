cask "font-playwrite-de-la-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedelaguides/PlaywriteDELAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE LA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+LA+Guides"

  font "PlaywriteDELAGuides-Regular.ttf"

  # No zap stanza required
end
