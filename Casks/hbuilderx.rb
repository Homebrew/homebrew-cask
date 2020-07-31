cask "hbuilderx" do
  version "2.8.3.20200728"
  sha256 "4050a6a727c4ad0fc64892e341e4f0396f7b7dbe415a55b37c25ac999863acad"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
