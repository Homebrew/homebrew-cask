cask "aliworkbench" do
  version "9.04.02,LqEYADnbwALXMQPyQRIT"
  sha256 "61caabd57a079e04fd30d4b40702f48704a503c397759cffc22a5cb7d96b4e34"

  url "https://gw.alipayobjects.com/os/rmsportal/#{version.csv.second}.dmg",
      verified: "gw.alipayobjects.com/os/rmsportal/"
  name "AliWorkBench"
  name "Qian Niu"
  name "千牛"
  desc "Merchant workbench"
  homepage "https://cts.alibaba.com/product/qianniu/download-pc"

  livecheck do
    url "https://alimarket.taobao.com/markets/qnww/qianniu-download?wh_from=macos"
    strategy :header_match do |headers|
      id = headers["location"][%r{/([^/]+)\.dmg}i, 1]
      version = headers["content-disposition"][/-(\d+(?:\.\d+)+)\.dmg/i, 1]
      next if version.blank? || id.blank?

      "#{version},#{id}"
    end
  end

  app "AliWorkBench.app"
end
