cask "font-playwrite-ng-modern-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritengmodernguides/PlaywriteNGModernGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NG Modern Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NG+Modern+Guides"

  font "PlaywriteNGModernGuides-Regular.ttf"

  # No zap stanza required
end
