cask "font-zcool-qingke-huangyou" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zcoolqingkehuangyou/ZCOOLQingKeHuangYou-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "ZCOOL QingKe HuangYou"
  homepage "https://fonts.google.com/specimen/ZCOOL+QingKe+HuangYou"

  font "ZCOOLQingKeHuangYou-Regular.ttf"

  # No zap stanza required
end
