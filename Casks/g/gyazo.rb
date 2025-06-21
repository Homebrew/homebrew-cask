cask "gyazo" do
  version "9.10.0"
  sha256 "22df1d144a1a5ee8be172b7ab20831b6e3aa157f77657afb64782d04fc46f3ff"

  url "https://files.gyazo.com/setup/Gyazo-#{version}.pkg"
  name "Nota Gyazo GIF"
  desc "Screenshot and screen recording tool"
  homepage "https://gyazo.com/"

  livecheck do
    url "https://gyazo.com/api/gy_mac.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  pkg "Gyazo-#{version}.pkg"

  uninstall launchctl: "com.gyazo.menu.helper",
            quit:      "com.gyazo.menu",
            pkgutil:   "com.gyazo.pkg",
            delete:    [
              "/Applications/Gyazo Menu.app",
              "/Applications/Gyazo Video.app",
              "/Applications/Gyazo.app",
            ]

  zap trash: [
    "~/Library/Caches/com.gyazo.gif",
    "~/Library/Caches/com.gyazo.mac",
    "~/Library/Preferences/com.gyazo.gif.plist",
    "~/Library/Preferences/com.gyazo.mac.plist",
  ]
end
