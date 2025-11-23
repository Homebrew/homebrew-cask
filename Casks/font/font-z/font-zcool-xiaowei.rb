cask "font-zcool-xiaowei" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zcoolxiaowei/ZCOOLXiaoWei-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "ZCOOL XiaoWei"
  homepage "https://fonts.google.com/specimen/ZCOOL+XiaoWei"

  font "ZCOOLXiaoWei-Regular.ttf"

  # No zap stanza required
end
