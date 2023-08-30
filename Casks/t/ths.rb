cask "ths" do
  version "4.1.3"
  sha256 "3ebf24838e92769a0efce48cb56ba0b6fcad4a7135b8e75b4437d4c6d4807ac0"

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
