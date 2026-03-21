cask "font-zcool-xiaowei" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zcoolxiaowei/ZCOOLXiaoWei-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "ZCOOL XiaoWei"
  homepage "https://fonts.google.com/specimen/ZCOOL+XiaoWei"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "ZCOOL XiaoWei",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZCOOLXiaoWei-Regular.ttf"

  # No zap stanza required
end
