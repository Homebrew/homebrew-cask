cask "font-noto-kufi-arabic" do
  version "2.109"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notokufiarabic/NotoKufiArabic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Kufi Arabic"
  homepage "https://fonts.google.com/specimen/Noto+Kufi+Arabic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Kufi Arabic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoKufiArabic[wght].ttf"

  # No zap stanza required
end
