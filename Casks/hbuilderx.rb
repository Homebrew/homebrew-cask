cask "hbuilderx" do
  version "2.9.8.20201110"
  sha256 "327091ef08e3759dd038f5b668cb0d04b29350bba75973568668ad907dd81723"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end
