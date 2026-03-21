cask "font-edu-sa-beginner" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/edusabeginner/EduSABeginner%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu SA Beginner"
  homepage "https://fonts.google.com/specimen/Edu+SA+Beginner"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Edu SA Beginner",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EduSABeginner[wght].ttf"

  # No zap stanza required
end
