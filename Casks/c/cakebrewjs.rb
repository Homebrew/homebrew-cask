cask "cakebrewjs" do
  version "2.82"
  sha256 "d1b3441c5e4528a1e4fca4a83a5d05c1551304c021a116e0b22a8250cc1ea46c"

  url "https://downloads.sourceforge.net/cakebrewjs/Cakebrewjs-#{version}-Darwin.dmg"
  name "cakebrewjs"
  desc "Homebrew GUI app"
  homepage "https://sourceforge.net/projects/cakebrewjs/"

  livecheck do
    url :url
    regex(%r{url=.*?/cakebrewjs[._-]v?(\d+(?:\.\d+)+)(?:[._-]Darwin)?\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
