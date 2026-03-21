cask "font-edu-nsw-act-foundation" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/edunswactfoundation/EduNSWACTFoundation%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu NSW ACT Foundation"
  homepage "https://fonts.google.com/specimen/Edu+NSW+ACT+Foundation"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Edu NSW ACT Foundation",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EduNSWACTFoundation[wght].ttf"

  # No zap stanza required
end
