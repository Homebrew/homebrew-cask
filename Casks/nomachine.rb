cask "nomachine" do
  version "7.6.2_4"
  sha256 "020dd7c7f409177ab93c8cbdcb9d55ff3232f05be88a6321e777b40fc524e2aa"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name "NoMachine"
  desc "Remote desktop software"
  homepage "https://www.nomachine.com/"

  livecheck do
    url "https://www.nomachine.com/download/download&id=7"
    regex(/nomachine[._-]v?(\d+(?:\.\d+)*_\d+)\.dmg/i)
  end

  pkg "NoMachine.pkg"

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete:    "/Applications/NoMachine.app",
            pkgutil:   "com.nomachine.nomachine.NoMachine-*.pkg",
            launchctl: [
              "com.nomachine.localnxserver",
              "com.nomachine.nxserver",
              "com.nomachine.server",
              "com.nomachine.uninstall",
            ]
end
