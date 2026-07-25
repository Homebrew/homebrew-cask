cask "font-edu-tas-beginner" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/edutasbeginner/EduTASBeginner%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu TAS Beginner"
  homepage "https://fonts.google.com/specimen/Edu+TAS+Beginner"

  font "EduTASBeginner[wght].ttf"

  # No zap stanza required
end
