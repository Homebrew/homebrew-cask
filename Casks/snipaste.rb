cask "snipaste" do
  version "2.5.5-Beta2"
  sha256 "dcb158157eb8885dd996d52621167d585db8f56133e4b3db6467bd49eb5c01ae"

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
