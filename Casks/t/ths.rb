cask "ths" do
  version "4.2.2"
  sha256 "bd9f8f3ec4207fd76c0c74ce231674c8612572a7d1e947fd146dfbbd6040b9b1"

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
