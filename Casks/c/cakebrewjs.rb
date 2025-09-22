cask "cakebrewjs" do
  version "2.89"
  sha256 "12cb881af9f116a8c05c296d21e2922148bd840ca4201cb6d20d0133fe80030a"

  url "https://downloads.sourceforge.net/cakebrewjs/Cakebrewjs-#{version}-Darwin.dmg"
  name "cakebrewjs"
  desc "Homebrew GUI app"
  homepage "https://sourceforge.net/projects/cakebrewjs/"

  livecheck do
    url :url
    regex(%r{url=.*?/cakebrewjs[._-]v?(\d+(?:\.\d+)+)(?:[._-]Darwin)?\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
