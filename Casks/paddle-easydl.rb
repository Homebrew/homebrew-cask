cask "paddle-easydl" do
  version "1.1.3,1125"
  sha256 "ab6d3406a0ecf0b61abae56fb920cf10879b5112ae32c7504edd81523e966717"

  url "https://aip-static.cdn.bcebos.com/paddle-desktop/releases/#{version.csv.first}/%E9%A3%9E%E6%A1%A8EasyDL-#{version.csv.first}.#{version.csv.second}.dmg",
      verified: "aip-static.cdn.bcebos.com/paddle-desktop"
  name "飞桨EasyDL"
  desc "飞桨EasyDL-桌面版 提供本地一站式模型训练与部署能力，支持零基础定制高精度模型，本地高效管理数据与模型，一键安装即可使用"
  homepage "https://ai.baidu.com/easydl/paddle"

  livecheck do
    url "https://aip-static.cdn.bcebos.com/paddle-desktop/releases/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(%r{path:.*/飞桨EasyDL-(\d+).(\d+).(\d+).(\d+).zip}i)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]},#{match[4]}"
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
