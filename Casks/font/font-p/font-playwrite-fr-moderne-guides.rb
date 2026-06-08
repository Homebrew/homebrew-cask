cask "font-playwrite-fr-moderne-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrmoderneguides/PlaywriteFRModerneGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite FR Moderne Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Moderne+Guides"

  font "PlaywriteFRModerneGuides-Regular.ttf"

  # No zap stanza required
end
