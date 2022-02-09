cask "gyazo" do
  version "3.9.2"
  sha256 "148a0f775a8924ec4fef32ba3957221cc863cf9e8e8ec955b76cf9fd09d1dd6f"

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
