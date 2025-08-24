cask "overdrive-media-console" do
  version "1.2.0"
  sha256 :no_check

  url "https://static.od-cdn.com/ODMediaConsoleSetup.dmg",
      verified: "static.od-cdn.com/"
  name "OverDrive Media Console"
  desc "Get eBooks, audiobooks, and videos from your local library"
  homepage "https://www.overdrive.com/"

  deprecate! date: "2024-07-04", because: :discontinued
  disable! date: "2025-07-04", because: :discontinued

  rename "OverDrive-Mac-Installer-Version-*.pkg", "OverDrive-Mac-Installer.pkg"

  pkg "OverDrive-Mac-Installer.pkg"

  uninstall pkgutil: "com.overdrive.overdriveMediaConsole.*"

  zap trash: [
    "~/Library/Caches/com.overdrive.overdrivemediaconsole",
    "~/Library/Preferences/com.overdrive.overdrivemediaconsole.plist",
  ]
end
