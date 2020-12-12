cask "overdrive-media-console" do
  version "1.2"
  sha256 :no_check

  # static.od-cdn.com was verified as official when first introduced to the cask
  url "http://static.od-cdn.com/ODMediaConsoleSetup.dmg"
  name "OverDrive Media Console"
  desc "Get eBooks, audiobooks, and videos from your local library"
  homepage "https://www.overdrive.com/"

  pkg "OverDrive-Mac-Installer-Version-#{version}.pkg"

  uninstall pkgutil: "com.overdrive.overdriveMediaConsole.*"

  zap trash: [
    "~/Library/Preferences/com.overdrive.overdrivemediaconsole.plist",
    "~/Library/Caches/com.overdrive.overdrivemediaconsole",
  ]
end
