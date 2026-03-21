cask "font-noto-serif-devanagari" do
  version "2.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifdevanagari/NotoSerifDevanagari%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Devanagari"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Devanagari"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Devanagari",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifDevanagari[wdth,wght].ttf"

  # No zap stanza required
end
