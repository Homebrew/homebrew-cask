cask "font-noto-sans-georgian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgeorgian/NotoSansGeorgian%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Georgian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Georgian"

  font "NotoSansGeorgian[wdth,wght].ttf"

  # No zap stanza required
end
