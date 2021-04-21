cask "overdrive-media-console" do
  version "1.2"
  sha256 :no_check

  url "http://static.od-cdn.com/ODMediaConsoleSetup.dmg",
      verified: "static.od-cdn.com/"
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
