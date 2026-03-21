cask "font-noto-sans-arabic" do
  version "2.012"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansarabic/NotoSansArabic%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Arabic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Arabic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Arabic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansArabic[wdth,wght].ttf"

  # No zap stanza required
end
