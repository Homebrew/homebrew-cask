cask "font-delius" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/delius/Delius-Regular.ttf"
  name "Delius"
  homepage "https://fonts.google.com/specimen/Delius"

  font "Delius-Regular.ttf"

  zap :not_required
end
