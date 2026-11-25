cask "font-rum-raisin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rumraisin/RumRaisin-Regular.ttf"
  name "Rum Raisin"
  homepage "https://fonts.google.com/specimen/Rum+Raisin"

  font "RumRaisin-Regular.ttf"

  zap :not_required
end
