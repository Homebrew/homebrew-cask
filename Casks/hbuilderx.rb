cask "hbuilderx" do
  version "2.8.13.20200927"
  sha256 "99c430598a4f909d900e4a7079d60c40686b724d7229feae904e2568395c9a24"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
