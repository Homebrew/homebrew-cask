cask "font-noto-sans-kannada" do
  version "2.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskannada/NotoSansKannada%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kannada"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kannada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Kannada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansKannada[wdth,wght].ttf"

  # No zap stanza required
end
