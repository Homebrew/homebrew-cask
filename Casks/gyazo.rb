cask "gyazo" do
  version "3.11.0"
  sha256 "441b8ed089be967c4136557c63e7742ddc930d7cbd44c4efab48143fb6598c10"

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
