cask "ths" do
  version "4.1.2"
  sha256 "35709de19d9d7d3559d5f8aacad242c87cb9702a4911fab18216324d0172dacb"

  url "https://resource.thsi.cn/soft/ThsMac#{version}.dmg",
      verified: "resource.thsi.cn/soft/"
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
