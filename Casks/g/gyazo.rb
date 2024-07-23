cask "gyazo" do
  version "9.3.0"
  sha256 "be827c71b7913c3f78b04d975853fb6f13cf864bd71daf9130dd85340b64cb54"

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
