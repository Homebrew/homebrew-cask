cask "after-dark-classic" do
  version :latest
  sha256 :no_check

  url "https://www.infinisys.co.jp/archive/online/online_afterdarkclassicset_e.dmg.gz"
  name "After Dark Classic Set"
  homepage "https://en.infinisys.co.jp/product/afterdarkclassicset/index.shtml"

  pkg "ClassicSet.pkg"

  uninstall pkgutil: [
    "jp.co.infinisys.flyingToastersmowingmanAndBoris.Boris.pkg",
    "jp.co.infinisys.flyingToastersmowingmanAndBoris.FlyingToasters.pkg",
    "jp.co.infinisys.flyingToastersmowingmanAndBoris.MowingMan.pkg",
  ]

  zap trash: [
    "~/Library/Preferences/ByHost/jp.co.infinisys.boris.*.plist",
    "~/Library/Preferences/ByHost/jp.co.infinisys.flyingtoasters.*.plist",
    "~/Library/Preferences/ByHost/jp.co.infinisys.mowingman.*.plist",
  ]
end
