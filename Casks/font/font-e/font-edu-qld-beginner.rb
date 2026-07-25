cask "font-edu-qld-beginner" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduqldbeginner/EduQLDBeginner%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu QLD Beginner"
  homepage "https://fonts.google.com/specimen/Edu+QLD+Beginner"

  font "EduQLDBeginner[wght].ttf"

  # No zap stanza required
end
