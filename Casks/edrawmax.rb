cask "edrawmax" do
  version :latest
  sha256 :no_check

  language "zh", "CN" do
    url "https://cc-download.edrawsoft.cn/edraw-max_cn_full5381.dmg"
    homepage "https://www.edrawsoft.cn/"
    app "亿图图示.app"
  end
  language "en", default: true do
    url "https://download.edrawsoft.com/edraw-max_full5380.dmg"
    homepage "https://www.edrawsoft.com/"
    app "Wondershare EdrawMax.app"
  end

  name "EdrawMax"

  zap trash: [
    "~/Library/Edraw",
    "~/Library/Preferences/com.edrawsoft.edrawmax.plist",
    "~/Library/Saved Application State/com.edrawsoft.edrawmax.savedState",
  ]
end
