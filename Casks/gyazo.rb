cask "gyazo" do
  version "3.8.0"
  sha256 "21f639c03526ac0e53e6c370530d1ddb5a96ec65a7ab00b80e11cf589036d85c"

  url "https://files.gyazo.com/setup/Gyazo-#{version}.dmg"
  name "Nota Gyazo GIF"
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
