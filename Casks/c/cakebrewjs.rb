cask "cakebrewjs" do
  version "2.93"
  sha256 "9bf1892de34e8c4b38dc220dd8e7390239cad4075c1cff0aad80cf34977156f0"

  url "https://downloads.sourceforge.net/cakebrewjs/Cakebrewjs-#{version}-Darwin.dmg"
  name "Cakebrewjs"
  desc "Homebrew GUI app"
  homepage "https://sourceforge.net/projects/cakebrewjs/"

  livecheck do
    url :url
    regex(%r{url=.*?/cakebrewjs[._-]v?(\d+(?:\.\d+)+)(?:[._-]Darwin)?\.dmg}i)
  end

  depends_on macos: ">= :tahoe"

  app "cakebrewjs.app"

  zap trash: [
    "~/Library/Application Support/cakebrewjs",
    "~/Library/Caches/cakebrewjs",
    "~/Library/Caches/CakebrewJs2App",
    "~/Library/Caches/shemeshg/Cakebrewjs2",
    "~/Library/Preferences/com.electron.cakebrewjs.helper.plist",
    "~/Library/Preferences/com.electron.cakebrewjs.plist",
    "~/Library/Preferences/com.shemeshg.Cakebrewjs2.plist",
  ]
end
