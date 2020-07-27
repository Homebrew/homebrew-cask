cask "aliworkbench" do
  version "9.04.02"
  sha256 "61caabd57a079e04fd30d4b40702f48704a503c397759cffc22a5cb7d96b4e34"

  # alimarket.taobao.com/ was verified as official when first introduced to the cask
  url "https://alimarket.taobao.com/markets/qnww/qianniu-download?wh_from=macos"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://alimarket.taobao.com/markets/qnww/qianniu-download%3Fwh_from=macos"
  name "AliWorkBench"
  name "Qian Niu"
  name "千牛"
  homepage "https://cts.alibaba.com/product/qianniu/download-pc"

  app "AliWorkBench.app"
end
