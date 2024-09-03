cask "cakebrewjs" do
  version "2.64"
  sha256 "d3be4cd04cba8f65382fbde8ad0374e37c7d66a3113877f916296dc4f6d5fb8a"

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
