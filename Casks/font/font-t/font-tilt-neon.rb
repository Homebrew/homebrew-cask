cask "font-tilt-neon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tiltneon/TiltNeon%5BXROT%2CYROT%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Tilt Neon"
  homepage "https://fonts.google.com/specimen/Tilt+Neon"

  font "TiltNeon[XROT,YROT].ttf"

  # No zap stanza required
end
