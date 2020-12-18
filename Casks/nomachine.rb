cask "nomachine" do
  version "7.0.208_4"
  sha256 "0ada3811c004da1865a20b19975a08ea06b4feb4a9186d570eb441acdafef39d"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  appcast "https://www.nomachine.com/download/download&id=7"
  name "NoMachine"
  homepage "https://www.nomachine.com/"

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
