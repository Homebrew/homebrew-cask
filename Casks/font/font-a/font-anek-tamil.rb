cask "font-anek-tamil" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anektamil/AnekTamil%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Tamil"
  homepage "https://fonts.google.com/specimen/Anek+Tamil"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anek Tamil",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnekTamil[wdth,wght].ttf"

  # No zap stanza required
end
