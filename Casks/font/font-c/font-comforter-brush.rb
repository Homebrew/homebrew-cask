cask "font-comforter-brush" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/comforterbrush/ComforterBrush-Regular.ttf"
  name "Comforter Brush"
  homepage "https://fonts.google.com/specimen/Comforter+Brush"

  font "ComforterBrush-Regular.ttf"

  zap :not_required
end
