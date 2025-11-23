cask "font-playwrite-za-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritezaguides/PlaywriteZAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ZA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+ZA+Guides"

  font "PlaywriteZAGuides-Regular.ttf"

  # No zap stanza required
end
