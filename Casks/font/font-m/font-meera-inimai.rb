cask "font-meera-inimai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meerainimai/MeeraInimai-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Meera Inimai"
  homepage "https://fonts.google.com/specimen/Meera+Inimai"

  font "MeeraInimai-Regular.ttf"

  # No zap stanza required
end
