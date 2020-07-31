cask "itools" do
  version "2.9.2"
  sha256 "cd74e55b8b92a8c1a75278ad7c02baf5521b51241505620c282e9547cd20afcd"

  # dl2.itools.hk/dl/ was verified as official when first introduced to the cask
  url "http://dl2.itools.hk/dl/iTools64_#{version}.dmg"
  appcast "http://dl2.itools.hk/update/iTools64ForMacCast.xml"
  name "iTools"
  homepage "https://pro.itools.cn/mac/english"

  app "iTools.app"
end
