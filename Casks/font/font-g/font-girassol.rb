cask "font-girassol" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/girassol/Girassol-Regular.ttf"
  name "Girassol"
  homepage "https://fonts.google.com/specimen/Girassol"

  font "Girassol-Regular.ttf"

  zap :not_required
end
