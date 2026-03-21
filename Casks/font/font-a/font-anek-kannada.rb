cask "font-anek-kannada" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekkannada/AnekKannada%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Kannada"
  homepage "https://fonts.google.com/specimen/Anek+Kannada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anek Kannada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnekKannada[wdth,wght].ttf"

  # No zap stanza required
end
