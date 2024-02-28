cask "ths" do
  version "4.2.4"
  sha256 "0ac0664449fc85aefa512dbc6b65da138572c54c13028e64dc3ce96570561a5f"

  url "https://sp.thsi.cn/staticS3/mobileweb-upload-static-server.file/app_6/downloadcenter/ThsMac#{version}.dmg",
      verified: "sp.thsi.cn/staticS3/mobileweb-upload-static-server.file/app_6/downloadcenter/"
  name "Straight Flush"
  name "同花顺"
  desc "Stock trading software"
  homepage "https://download.10jqka.com.cn/free/mac"

  livecheck do
    url "https://download.10jqka.com.cn/index/download/id/113/"
    strategy :header_match
  end

  app "同花顺.app"

  zap trash: [
    "~/Library/Application Scripts/cn.com.10jqka.macstock",
    "~/Library/Application Scripts/cn.com.10jqka.macstock.widget",
    "~/Library/Containers/cn.com.10jqka.macstock",
    "~/Library/Containers/cn.com.10jqka.macstock.widget",
  ]
end
