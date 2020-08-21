cask "snipaste" do
  version "2.5-Beta"
  sha256 "5101f3d7c09f5915408196872fc58d5a4b699f7e1f1041574a410affb852360d"

  # bitbucket.org/liule/snipaste/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-#{version}.dmg"
  appcast "https://www.snipaste.com/download.html"
  name "Snipaste"
  homepage "https://www.snipaste.com/"

  auto_updates true

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: "~/Library/Preferences/com.Snipaste.plist"
end
