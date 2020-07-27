cask "qqmacmgr" do
  version "2.4.16"
  sha256 "6ff8fe1fe173ac7c78c0140dec616a1b426237b1b5e3053851a03b3df515c38e"

  # pm.myapp.com/invc/xfspeed was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/QQMacMgr_#{version}.dmg"
  name "腾讯电脑管家"
  homepage "https://lemon.qq.com/index_o.html"

  app "QQMacMgr.app"
end
