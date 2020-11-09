cask "overdrive-media-console" do
  version "1.2"
  sha256 "6e04ac61337647aa86c67d04d62552a0c0a31a3104bf4856aa726e8317272be9"

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
