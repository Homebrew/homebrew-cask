cask "paddle-easydl" do
  version "1.1.4,1168"
  sha256 "a31a592ba0aec4d24abeb8443aee11fd886c79e32366d60ee0afffab2d8d2051"

  url "https://aip-static.cdn.bcebos.com/paddle-desktop/releases/#{version.csv.first}/%E9%A3%9E%E6%A1%A8EasyDL-#{version.csv.first}.#{version.csv.second}.dmg",
      verified: "aip-static.cdn.bcebos.com/paddle-desktop"
  name "飞桨EasyDL"
  desc "飞桨EasyDL-桌面版 提供本地一站式模型训练与部署能力，支持零基础定制高精度模型，本地高效管理数据与模型，一键安装即可使用"
  homepage "https://ai.baidu.com/easydl/paddle"

  livecheck do
    url "https://aip-static.cdn.bcebos.com/paddle-desktop/releases/latest-mac.yml"
    regex(/path:.*?EasyDL[._-]v?(\d+(?:\.\d+)+)[._-](\d{4,})\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"
  depends_on arch: :x86_64

  app "飞桨EasyDL.app"

  zap trash: [
    "~/Library/Application Support/paddle-desktop",
    "~/Library/Preferences/com.baidu.paddle.desktop",
    "~/Library/Logs/paddle-desktop",
  ]
end
