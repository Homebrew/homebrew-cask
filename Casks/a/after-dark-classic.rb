cask "after-dark-classic" do
  version "1.3"
  sha256 "4a0973a807232dc37c6994b6c46487ef86af7c3f08b946a74b181735865f0739"

  url "https://www.infinisys.co.jp/archive/online/online_afterdark#{version.no_dots}e.dmg"
  name "After Dark Classic Set"
  desc "Classic After Dark screensaver set"
  homepage "https://en.infinisys.co.jp/product/afterdarkclassicset/index.shtml"

  livecheck do
    url :homepage
    regex(/After\sDark\sClassic\sSet\s(\d+(?:\.\d+)+)/i)
  end

  pkg "AfterDark.pkg"

  uninstall pkgutil: [
    "jp.co.infinisys.afterdark.boris11.pkg",
    "jp.co.infinisys.afterdark.flyingtoasters12.pkg",
    "jp.co.infinisys.afterdark.mowingman11.pkg",
  ]

  zap trash: [
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/jp.co.infinisys.boris11.*.plist",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/jp.co.infinisys.flyingscreensaver12.*.plist",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/jp.co.infinisys.mowingman11.*.plist",
  ]
end
