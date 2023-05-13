cask "overdrive-media-console" do
  version "1.2.0"
  sha256 :no_check

  url "https://static.od-cdn.com/ODMediaConsoleSetup.dmg",
      verified: "static.od-cdn.com/"
  name "OverDrive Media Console"
  desc "Get eBooks, audiobooks, and videos from your local library"
  homepage "https://www.overdrive.com/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      item = items["com.overdrive.overdrivemediaconsole"]
      item.short_version[/(\d+(?:\.\d+)+)/]
    end
  end

  pkg "OverDrive-Mac-Installer.pkg"

  preflight do
    staged_path.glob("OverDrive-Mac-Installer-Version-*.pkg").first.rename(staged_path/"OverDrive-Mac-Installer.pkg")
  end

  uninstall pkgutil: "com.overdrive.overdriveMediaConsole.*"

  zap trash: [
    "~/Library/Preferences/com.overdrive.overdrivemediaconsole.plist",
    "~/Library/Caches/com.overdrive.overdrivemediaconsole",
  ]
end
