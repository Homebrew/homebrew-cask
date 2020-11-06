cask "snipaste" do
  version "2.5.2-Beta"
  sha256 "907f5c99563a6a49a6daeb4cfbb24dfcd78994db36d0f1d4597886870c71d7a5"

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
