cask "font-noto-sans-bengali" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbengali/NotoSansBengali%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Bengali"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Bengali"

  font "NotoSansBengali[wdth,wght].ttf"

  # No zap stanza required
end
