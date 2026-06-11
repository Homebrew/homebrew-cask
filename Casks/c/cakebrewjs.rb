cask "cakebrewjs" do
  version "2.101"
  sha256 "565249b7e3dae2241a93c09df6be66a60ea12140f8a2d8d9ff257133da198e86"

  url "https://downloads.sourceforge.net/cakebrewjs/Cakebrewjs-#{version}-Darwin.dmg"
  name "Cakebrewjs"
  desc "Homebrew GUI app"
  homepage "https://sourceforge.net/projects/cakebrewjs/"

  livecheck do
    url :url
    regex(%r{url=.*?/cakebrewjs[._-]v?(\d+(?:\.\d+)+)(?:[._-]Darwin)?\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :tahoe

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
