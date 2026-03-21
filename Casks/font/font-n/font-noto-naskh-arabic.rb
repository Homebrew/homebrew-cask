cask "font-noto-naskh-arabic" do
  version "2.021"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notonaskharabic/NotoNaskhArabic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Naskh Arabic"
  homepage "https://fonts.google.com/specimen/Noto+Naskh+Arabic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Naskh Arabic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoNaskhArabic[wght].ttf"

  # No zap stanza required
end
