cask "font-pacifico" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pacifico/Pacifico-Regular.ttf"
  name "Pacifico"
  homepage "https://fonts.google.com/specimen/Pacifico"

  font "Pacifico-Regular.ttf"

  zap :not_required
end
