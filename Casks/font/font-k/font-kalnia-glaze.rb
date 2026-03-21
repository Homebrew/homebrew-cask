cask "font-kalnia-glaze" do
  version "1.110"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kalniaglaze/KalniaGlaze%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kalnia Glaze"
  homepage "https://fonts.google.com/specimen/Kalnia+Glaze"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kalnia Glaze",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KalniaGlaze[wdth,wght].ttf"

  # No zap stanza required
end
