cask "hbuilderx" do
  version "2.8.8.20200820"
  sha256 "cdf78ed915fe11cac303f56b9968dd63eeabc897dffb0297920dbc44b6294cc1"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
