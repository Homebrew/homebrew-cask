cask "ths" do
  version "4.2.0"
  sha256 "1c14ee05bdea4fb760154bb561e6d72e449d8041757bff77073c118c61296809"

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
