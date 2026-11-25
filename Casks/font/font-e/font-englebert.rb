cask "font-englebert" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/englebert/Englebert-Regular.ttf"
  name "Englebert"
  homepage "https://fonts.google.com/specimen/Englebert"

  font "Englebert-Regular.ttf"

  zap :not_required
end
