cask "gyazo" do
  version "10.7.0"
  sha256 "b17c5fdfe456fa06e4bd4a93f322803f6dda628b6b771de7f24d3779c3c61459"

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
