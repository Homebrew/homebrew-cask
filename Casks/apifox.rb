cask "apifox" do
  version "1.3.6"
  sha256 "6ac226c9fcdcb25fcb3c96070d49e1e823b7d43a274b11a0b05402c60e125cfa"

  url "https://github.com/biaomingzhong/apifox-versions/releases/download/v#{version}/Apifox-#{version}.dmg"
  name "apifox"
  homepage "https://www.apifox.cn/"

  app "Apifox.app"
end
