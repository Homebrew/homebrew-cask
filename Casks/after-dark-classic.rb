cask "after-dark-classic" do
  version "1.2"
  sha256 :no_check

  url "https://www.infinisys.co.jp/archive/online/online_afterdark12e.dmg"
  name "After Dark Classic Set"
  desc "Classic After Dark screensaver set"
  homepage "https://en.infinisys.co.jp/product/afterdarkclassicset/index.shtml"

  pkg "AfterDark.pkg"

  uninstall pkgutil: [
    "jp.co.infinisys.afterdark.boris11.pkg",
    "jp.co.infinisys.afterdark.flyingtoasters12.pkg",
    "jp.co.infinisys.afterdark.mowingman11.pkg",
  ]

  zap trash: [
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/" \
    "Data/Library/Preferences/ByHost/jp.co.infinisys.boris11.*.plist",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/" \
    "Data/Library/Preferences/ByHost/jp.co.infinisys.flyingscreensaver12.*.plist",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/" \
    "Data/Library/Preferences/ByHost/jp.co.infinisys.mowingman11.*.plist",
  ]
end
