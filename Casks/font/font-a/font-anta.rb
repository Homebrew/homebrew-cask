cask "font-anta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anta/Anta-Regular.ttf"
  name "Anta"
  homepage "https://fonts.google.com/specimen/Anta"

  font "Anta-Regular.ttf"

  zap :not_required
end
