cask "font-playwrite-us-modern-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteusmodernguides/PlaywriteUSModernGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite US Modern Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+US+Modern+Guides"

  font "PlaywriteUSModernGuides-Regular.ttf"

  # No zap stanza required
end
