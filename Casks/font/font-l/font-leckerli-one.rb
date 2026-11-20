cask "font-leckerli-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/leckerlione/LeckerliOne-Regular.ttf"
  name "Leckerli One"
  homepage "https://fonts.google.com/specimen/Leckerli+One"

  font "LeckerliOne-Regular.ttf"

  zap :not_required
end
