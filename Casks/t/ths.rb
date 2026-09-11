cask "ths" do
  version "5.3.5"
  sha256 "14d228c77743771cb43d9f9796b666c6e36c9e43dc8d2ff61f97cd7aefa53dbc"

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
