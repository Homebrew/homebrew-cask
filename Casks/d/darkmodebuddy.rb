cask "darkmodebuddy" do
  version "1.2,13"
  sha256 "4a13606fa242795353b8256b0a9d0c6a1624aea47b1d2f67b55b2e52ef1a6d77"

  url "https://su.darkmodebuddy.app/DarkModeBuddy_v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "darkmodebuddy.app/"
  name "DarkModeBuddy"
  desc "Automatically switch between light and dark modes based on ambient light sensor"
  homepage "https://github.com/insidegui/DarkModeBuddy"

  livecheck do
    url "https://su.darkmodebuddy.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "DarkModeBuddy.app"

  uninstall signal:     ["TERM", "codes.rambo.DarkModeBuddy"],
            login_item: "DarkModeBuddy"

  zap trash: "~/Library/Preferences/codes.rambo.DarkModeBuddy.plist"
end
