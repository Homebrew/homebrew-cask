cask "hbuilderx" do
  version "2.9.7.20201105"
  sha256 "64b3553b2f61d3cbd9f0ccdc7a3c1086a69f1c4c9fca42ce0ab011865b02ea11"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
