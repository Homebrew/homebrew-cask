cask "font-noto-sans-devanagari" do
  version "2.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansdevanagari/NotoSansDevanagari%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Devanagari"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Devanagari"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Devanagari",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansDevanagari[wdth,wght].ttf"

  # No zap stanza required
end
