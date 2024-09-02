cask "cakebrewjs" do
  version "2.63"
  sha256 "6c7346da4a6b9d62cd7570e0ed670deb2bd0f8d3850ce15cf9eea660bc0f12c2"

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
