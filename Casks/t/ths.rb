cask "ths" do
  version "5.3.4"
  sha256 "9d8093b55d95f5ef9b759c4b76b26498f66ca086f01249763e9b5844090c06dd"

  url "https://sp.thsi.cn/staticS3/mobileweb-upload-static-server.file/app_6/downloadcenter/ThsMac#{version}.dmg"
  name "Straight Flush"
  name "同花顺"
  desc "Stock trading software"
  homepage "https://download.10jqka.com.cn/free/mac"

  livecheck do
    url "https://download.10jqka.com.cn/index/download/id/113/"
    strategy :header_match
  end

  depends_on :macos

  app "同花顺.app"

  zap trash: [
    "~/Library/Application Scripts/cn.com.10jqka.macstock",
    "~/Library/Application Scripts/cn.com.10jqka.macstock.widget",
    "~/Library/Containers/cn.com.10jqka.macstock",
    "~/Library/Containers/cn.com.10jqka.macstock.widget",
  ]
end
