cask "nomachine" do
  version "7.0.211_1"
  sha256 "6e7ff5105ee680f724dcaae7aae8aceef461650d872945df810c5347911987b5"

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
