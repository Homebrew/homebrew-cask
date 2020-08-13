cask "hbuilderx" do
  version "2.8.5.20200812"
  sha256 "d3d84ac9a32fc0756de7a769729280f8e4e5499f1c5678d853892771fc7dd1ef"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
