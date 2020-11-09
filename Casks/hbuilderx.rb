cask "hbuilderx" do
  version "2.9.3.20201014"
  sha256 "b1b574b9a27c87bbcbc7a00a0e736b9bb82b31c8b2fe87f63db4fdd9671b5695"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
