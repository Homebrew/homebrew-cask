cask "font-noto-sans-armenian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansarmenian/NotoSansArmenian%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Armenian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Armenian"

  font "NotoSansArmenian[wdth,wght].ttf"

  # No zap stanza required
end
