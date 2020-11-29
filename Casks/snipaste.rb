cask "snipaste" do
  version "2.5.5-Beta"
  sha256 "e92ec87c036bcafe2eef89bf4896e54ef3176db6ef4bd98c7639cb83b3a1071e"

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
