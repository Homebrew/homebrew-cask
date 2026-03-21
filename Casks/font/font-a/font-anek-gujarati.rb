cask "font-anek-gujarati" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekgujarati/AnekGujarati%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Gujarati"
  homepage "https://fonts.google.com/specimen/Anek+Gujarati"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anek Gujarati",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnekGujarati[wdth,wght].ttf"

  # No zap stanza required
end
