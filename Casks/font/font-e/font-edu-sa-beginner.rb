cask "font-edu-sa-beginner" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/edusabeginner/EduSABeginner%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu SA Beginner"
  homepage "https://fonts.google.com/specimen/Edu+SA+Beginner"

  font "EduSABeginner[wght].ttf"

  # No zap stanza required
end
