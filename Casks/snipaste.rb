cask "snipaste" do
  version "2.5.1-Beta"
  sha256 "cc047d8814d47abf7ef7c0c83e2168ac9005eae03040d6a65cdf37830b0550d3"

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
