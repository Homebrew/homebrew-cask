cask "cakebrewjs" do
  version "2.2.2"
  sha256 "dcb4322378b60f7b20fe57b5dd7952ae13520ca2ac194652eff156e912b46eb4"

  url "https://downloads.sourceforge.net/cakebrewjs/cakebrewjs-#{version}-Darwin.dmg"
  name "cakebrewjs"
  desc "Homebrew GUI app"
  homepage "https://sourceforge.net/projects/cakebrewjs/"

  livecheck do
    url "https://sourceforge.net/projects/cakebrewjs/rss?"
    regex(/cakebrewjs-(\d+(?:\.\d+)+)-Darwin\.dmg/i)
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
