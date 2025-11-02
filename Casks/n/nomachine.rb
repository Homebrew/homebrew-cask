cask "nomachine" do
  version "9.2.18_1"
  sha256 "1ae4101f188453a9b3d7a082bef404badcae72afd40505096ece36dcb0b3cb77"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name "NoMachine"
  desc "Remote desktop software"
  homepage "https://www.nomachine.com/"

  livecheck do
    url "https://www.nomachine.com/dwl_nm_bann.php"
    regex(/nomachine[._-]v?(\d+(?:\.\d+)+_\d+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true

  pkg "NoMachine.pkg"

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall launchctl: [
              "com.nomachine.localnxserver",
              "com.nomachine.nxlaunchconf",
              "com.nomachine.nxnode",
              "com.nomachine.nxplayer",
              "com.nomachine.nxrunner",
              "com.nomachine.nxserver",
              "com.nomachine.server",
              "com.nomachine.uninstall",
              "com.nomachine.uninstallAgent",
            ],
            pkgutil:   [
              "com.nomachine.nomachine.NoMachine-*.pkg",
              "com.nomachine.nxnode",
              "com.nomachine.nxplayer",
              "com.nomachine.nxrunner",
              "com.nomachine.nxserver",
            ],
            delete:    "/Applications/NoMachine.app"

  zap trash: [
    "/Library/Application Support/NoMachine",
    "~/Documents/NoMachine",
    "~/Library/Preferences/com.nomachine.nxdock.plist",
  ]
end
