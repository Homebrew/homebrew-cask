cask "font-meera-inimai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meerainimai/MeeraInimai-Regular.ttf"
  name "Meera Inimai"
  homepage "https://fonts.google.com/specimen/Meera+Inimai"

  font "MeeraInimai-Regular.ttf"

  zap :not_required
end
