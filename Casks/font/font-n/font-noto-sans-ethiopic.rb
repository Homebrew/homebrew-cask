cask "font-noto-sans-ethiopic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansethiopic/NotoSansEthiopic%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Ethiopic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Ethiopic"

  font "NotoSansEthiopic[wdth,wght].ttf"

  # No zap stanza required
end
