cask "font-edu-qld-beginner" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduqldbeginner/EduQLDBeginner%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu QLD Beginner"
  homepage "https://fonts.google.com/specimen/Edu+QLD+Beginner"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Edu QLD Beginner",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EduQLDBeginner[wght].ttf"

  # No zap stanza required
end
