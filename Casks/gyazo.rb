cask "gyazo" do
  version "3.9.4"
  sha256 "28bfd9bc3001f1020cc8c7b364a4b79e0d4f2d1e43ace2fc692513a205cd31a1"

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
