cask "itools" do
  version "2.9.2"
  sha256 "cd74e55b8b92a8c1a75278ad7c02baf5521b51241505620c282e9547cd20afcd"

  url "http://dl2.itools.hk/dl/iTools64_#{version}.dmg",
      verified: "dl2.itools.hk/dl/"
  name "iTools"
  homepage "https://pro.itools.cn/mac/english"

  livecheck do
    url "http://dl2.itools.hk/update/iTools64ForMacCast.xml"
    strategy :sparkle
  end

  app "iTools.app"
end
