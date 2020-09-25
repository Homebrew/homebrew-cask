cask "hbuilderx" do
  version "2.8.12.20200925"
  sha256 "a0f70316e26a91af1460240bb3318eb7c77f28d5323e6a2ed3237a874eabd871"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
