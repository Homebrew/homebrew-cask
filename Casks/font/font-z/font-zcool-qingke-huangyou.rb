cask "font-zcool-qingke-huangyou" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zcoolqingkehuangyou/ZCOOLQingKeHuangYou-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "ZCOOL QingKe HuangYou"
  homepage "https://fonts.google.com/specimen/ZCOOL+QingKe+HuangYou"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "ZCOOL QingKe HuangYou",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZCOOLQingKeHuangYou-Regular.ttf"

  # No zap stanza required
end
