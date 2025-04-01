cask "gyazo" do
  version "9.8.0"
  sha256 "bc6a462fb6ede02295e864d2eef1482259ba1ff5ad997b306e92102d064259a4"

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
