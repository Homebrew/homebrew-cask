cask "font-anek-devanagari" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekdevanagari/AnekDevanagari%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Devanagari"
  homepage "https://fonts.google.com/specimen/Anek+Devanagari"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anek Devanagari",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnekDevanagari[wdth,wght].ttf"

  # No zap stanza required
end
