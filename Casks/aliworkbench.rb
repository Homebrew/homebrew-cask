cask "aliworkbench" do
  version "9.04.02,6846"
  sha256 :no_check

  url "https://alimarket.taobao.com/markets/qnww/qianniu-download?wh_from=macos",
      verified: "alimarket.taobao.com/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://alimarket.taobao.com/markets/qnww/qianniu-download%3Fwh_from=macos"
  name "AliWorkBench"
  name "Qian Niu"
  name "千牛"
  homepage "https://cts.alibaba.com/product/qianniu/download-pc"

  app "AliWorkBench.app"
end
