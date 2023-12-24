cask "nomachine" do
  version "8.10.1_1"
  sha256 "2a5c394e98f1e801fde029f87cff3b8094bcfaec4130a1b37da8623bb490c6fd"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name "NoMachine"
  desc "Remote desktop software"
  homepage "https://www.nomachine.com/"

  livecheck do
    url "https://www.nomachine.com/support&destination=downloads&callback=L2Rvd25sb2FkLz9pZD03"
    regex(/nomachine[._-]v?(\d+(?:\.\d+)+_\d+)\.dmg/i)
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
              "com.nomachine.uninstall",
              "com.nomachine.uninstallAgent",
              "com.nomachine.server",
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
