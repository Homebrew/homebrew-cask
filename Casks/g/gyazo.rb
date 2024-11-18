cask "gyazo" do
  version "9.6.0"
  sha256 "bf87805979389a3672c3487a971413ee938c662f9e682ad1ace25db6f6a0e083"

  url "https://files.gyazo.com/setup/Gyazo-#{version}.pkg"
  name "Nota Gyazo GIF"
  desc "Screenshot and screen recording tool"
  homepage "https://gyazo.com/"

  livecheck do
    url "https://gyazo.com/api/gy_mac.xml"
    strategy :sparkle
  end

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
