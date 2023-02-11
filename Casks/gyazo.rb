cask "gyazo" do
  version "3.10.1"
  sha256 "ba20b60176ee2cefe60f439cca811bd69606c8bad4955874cf764127c848ef25"

  url "https://files.gyazo.com/setup/Gyazo-#{version}.dmg"
  name "Nota Gyazo GIF"
  desc "Screenshot and screen recording tool"
  homepage "https://gyazo.com/"

  livecheck do
    url "https://gyazo.com/api/gy_mac.xml"
    strategy :sparkle
  end

  app "Gyazo.app"
  app "Gyazo GIF.app"

  zap trash: [
    "~/Library/Caches/com.gyazo.gif",
    "~/Library/Caches/com.gyazo.mac",
    "~/Library/Preferences/com.gyazo.gif.plist",
    "~/Library/Preferences/com.gyazo.mac.plist",
  ]
end
