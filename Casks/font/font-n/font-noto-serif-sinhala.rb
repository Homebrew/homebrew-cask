cask "font-noto-serif-sinhala" do
  version "2.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifsinhala/NotoSerifSinhala%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Sinhala"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Sinhala"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Sinhala",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifSinhala[wdth,wght].ttf"

  # No zap stanza required
end
