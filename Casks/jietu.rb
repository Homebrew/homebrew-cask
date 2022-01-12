cask "jietu" do
  version "2.2.2,11054"
  sha256 "6b8c906a1f004e11aa956916fb3e652a3b72baee77d76f09e02a4199db8bddc4"

  url "https://dldir1.qq.com/invc/tt/QB/Jietu/Jietu_#{version.csv.first}(#{version.csv.second}).dmg"
  name "Jietu"
  name "截图"
  desc "Quick annotation and sharing screenshot tool"
  homepage "https://jietu.qq.com/"

  livecheck do
    url "https://jietu.qq.com/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Jietu_(\d+(?:\.\d+)*)\((\d+)\)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Jietu.app"

  uninstall quit:      "com.tencent.JietuMac",
            launchctl: "com.tencent.JietuHelperMac"

  zap trash: [
    "~/Library/Application Support/Jietu",
    "~/Library/Caches/com.tencent.JietuMac",
    "~/Library/Preferences/com.tencent.JietuMac.plist",
  ]
end
