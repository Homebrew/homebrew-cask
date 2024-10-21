cask "cakebrewjs" do
  version "2.65"
  sha256 "0b2fc384b78530a27e62e2da8ca5de8320420f53627e9f70933f434f4a6374c9"

  url "https://downloads.sourceforge.net/cakebrewjs/cakebrewjs-#{version}-Darwin.dmg"
  name "cakebrewjs"
  desc "Homebrew GUI app"
  homepage "https://sourceforge.net/projects/cakebrewjs/"

  livecheck do
    url :url
    regex(%r{url=.*?/cakebrewjs[._-]v?(\d+(?:\.\d+)+)(?:[._-]Darwin)?\.dmg}i)
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
