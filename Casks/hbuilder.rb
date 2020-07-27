cask "hbuilder" do
  version "9.0.8"
  sha256 "fe6ee1b2fe12fa4312362278bbcbbf9d817f0644fcc60097bb465f14d36a36ef"

  # download.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg"
  name "HBuilder"
  homepage "https://www.dcloud.io/"

  app "HBuilder.app"
end
