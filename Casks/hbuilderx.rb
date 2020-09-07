cask "hbuilderx" do
  version "2.8.11.20200907"
  sha256 "cc8c9c441af12c2acd91beb24bc7bf2d53594ca7b377a3550609394625b35cc8"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
