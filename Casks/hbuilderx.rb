cask "hbuilderx" do
  version "2.8.12.20200926"
  sha256 "47ed3dbef1c9b08c145d6c99be425e2edf7fd3363d65b56441a601f35b5a01fc"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
