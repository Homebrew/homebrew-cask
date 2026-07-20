cask "font-comforter-brush" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/comforterbrush/ComforterBrush-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Comforter Brush"
  homepage "https://fonts.google.com/specimen/Comforter+Brush"

  font "ComforterBrush-Regular.ttf"

  # No zap stanza required
end
