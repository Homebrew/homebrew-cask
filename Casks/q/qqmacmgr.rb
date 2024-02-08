cask "qqmacmgr" do
  version "2.4.16"
  sha256 "6ff8fe1fe173ac7c78c0140dec616a1b426237b1b5e3053851a03b3df515c38e"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/QQMacMgr_#{version}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/"
  name "腾讯电脑管家"
  homepage "https://lemon.qq.com/index_o.html"

  # `tencent-lemon` is the maintained cask
  disable! date: "2024-01-01", because: :discontinued

  app "QQMacMgr.app"

  caveats do
    <<~EOS
      tencent-lemon is the successor to this software:

        brew install --cask tencent-lemon
    EOS
  end
end
