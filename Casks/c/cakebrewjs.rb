cask "cakebrewjs" do
  version "2.1.0"
  sha256 "3e03980d07ddc86b44767e6cce9a5ffda302443579128eafd7e9bb777770cd83"

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
    "~/Library/Preferences/com.electron.cakebrewjs.helper.plist",
    "~/Library/Preferences/com.electron.cakebrewjs.plist",
    "~/Library/Preferences/com.shemeshg.Cakebrewjs2.plist",
  ]
end
