cask "hbuilder" do
  version "9.0.8"
  sha256 "fe6ee1b2fe12fa4312362278bbcbbf9d817f0644fcc60097bb465f14d36a36ef"

  url "https://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg",
      verified: "download.dcloud.net.cn/"
  name "HBuilder"
  homepage "https://www.dcloud.io/"

  app "HBuilder.app"
end
