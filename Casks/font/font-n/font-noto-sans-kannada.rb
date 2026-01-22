cask "font-noto-sans-kannada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskannada/NotoSansKannada%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kannada"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kannada"

  font "NotoSansKannada[wdth,wght].ttf"

  # No zap stanza required
end
