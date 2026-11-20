cask "font-chenla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chenla/Chenla.ttf"
  name "Chenla"
  homepage "https://fonts.google.com/specimen/Chenla"

  font "Chenla.ttf"

  zap :not_required
end
