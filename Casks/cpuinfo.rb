cask "cpuinfo" do
  version "1.4.6"
  sha256 "bbf19dd1a7833dbb80933b4ac9845d70d35b434723cbcfcca060250a3c635770"

  url "https://github.com/yusukeshibata/cpuinfo/raw/#{version}/dist/cpuinfo.zip"
  name "cpuinfo"
  desc "CPU meter menu bar app"
  homepage "https://github.com/yusukeshibata/cpuinfo/"

  app "cpuinfo.app"
end
