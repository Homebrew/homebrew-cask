cask "font-noto-sans-tai-tham" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstaitham/NotoSansTaiTham%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tai Tham"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tai+Tham"

  font "NotoSansTaiTham[wght].ttf"

  # No zap stanza required
end
