cask "edrawmax" do
  version :latest
  sha256 :no_check

  language "CN" do
    url "https://cc-download.edrawsoft.cn/edraw-max_cn_full5381.dmg"
    homepage "https://www.edrawsoft.cn/"
  end
  language "en", default: true do
    url "https://download.edrawsoft.com/edraw-max_full5380.dmg"
    homepage "https://www.edrawsoft.com/"
  end

  name "EdrawMax"

  app "EdrawMax.app"

  zap trash: [
    "~/Library/Edraw",
    "~/Library/Preferences/com.edrawsoft.edrawmax.plist",
    "~/Library/Saved Application State/com.edrawsoft.edrawmax.savedState",
  ]
end
