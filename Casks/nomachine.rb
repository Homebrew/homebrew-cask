cask "nomachine" do
  version "8.4.2_5"
  sha256 "e8d33c541b87076d1d4ae392119435ce2e49286f364e5cdb3f279e922c5cdd98"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name "NoMachine"
  desc "Remote desktop software"
  homepage "https://www.nomachine.com/"

  livecheck do
    url "https://nomachine.com/support&destination=downloads&callback=L2Rvd25sb2FkLz9pZD03"
    regex(/nomachine[._-]v?(\d+(?:\.\d+)+_\d+)\.dmg/i)
  end

  pkg "NoMachine.pkg"

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete:    "/Applications/NoMachine.app",
            pkgutil:   [
              "com.nomachine.nomachine.NoMachine-*.pkg",
              "com.nomachine.nxnode",
              "com.nomachine.nxplayer",
              "com.nomachine.nxrunner",
              "com.nomachine.nxserver",
            ],

            launchctl: [
              "com.nomachine.nxnode",
              "com.nomachine.nxplayer",
              "com.nomachine.nxrunner",
              "com.nomachine.nxserver",
              "com.nomachine.localnxserver",
              "com.nomachine.uninstall",
              "com.nomachine.server",
              "com.nomachine.nxlaunchconf",
            ]

  zap trash: [
    "/Library/Application Support/NoMachine",
    "~/Documents/NoMachine",
    "~/Library/Preferences/com.nomachine.nxdock.plist",
  ]
end
