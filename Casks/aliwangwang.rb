cask "aliwangwang" do
  version "20200723-8.01.03"
  sha256 "c7ed5cc9ace67b6ba65ee84dae24cb467e36118359b7538762036071ead0ba05"

  # gw.alipayobjects.com was verified as official when first introduced to the cask
  url "https://gw.alipayobjects.com/os/bmw-prod/9b3facdd-e15f-4013-a883-b48ef641d700.dmg"
  appcast "https://jdy.tmall.com/version/check?version=8.00.44M&nick=cask&platform=macww"
  name "Ali Wangwang"
  homepage "https://alimarket.taobao.com/markets/qnww/portal-group/ww/index"

  auto_updates true

  app "AliWangwang.app"

  uninstall quit: "com.taobao.aliwangwang"

  zap trash: [
    "~/Library/Caches/com.taobao.aliwangwang",
    "~/Library/Containers/com.taobao.aliwangwang",
    "~/Library/Internet Plug-Ins/WangwangPlugin.plugin",
    "~/Library/Preferences/com.taobao.aliwangwang.plist",
    "~/Library/Saved Application State/com.taobao.aliwangwang.savedState",
  ]
end
