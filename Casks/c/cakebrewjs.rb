cask "cakebrewjs" do
  version "2.2.5"
  sha256 "40db452e22c63b6cfd4adb60ac92f5958000e30550eb3d30ba96e53354ee838c"

  url "https://downloads.sourceforge.net/cakebrewjs/cakebrewjs-#{version}-Darwin.dmg"
  name "cakebrewjs"
  desc "Homebrew GUI app"
  homepage "https://sourceforge.net/projects/cakebrewjs/"

  livecheck do
    url "https://sourceforge.net/projects/cakebrewjs/rss?"
    regex(/cakebrewjs[._-]v?(\d+(?:\.\d+)+)[._-]Darwin\.dmg/i)
    strategy :page_match
  end

  app "cakebrewjs.app"

  zap trash: [
    "~/Library/Application Support/cakebrewjs",
    "~/Library/Caches/cakebrewjs",
    "~/Library/Caches/CakebrewJs2App",
    "~/Library/Preferences/com.electron.cakebrewjs.helper.plist",
    "~/Library/Preferences/com.electron.cakebrewjs.plist",
    "~/Library/Preferences/com.shemeshg.Cakebrewjs2.plist",
  ]
end
