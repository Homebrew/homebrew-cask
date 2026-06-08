cask "font-zhi-mang-xing" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zhimangxing/ZhiMangXing-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zhi Mang Xing"
  homepage "https://fonts.google.com/specimen/Zhi+Mang+Xing"

  font "ZhiMangXing-Regular.ttf"

  # No zap stanza required
end
