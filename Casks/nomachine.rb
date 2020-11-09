cask "nomachine" do
  version "6.12.3_8"
  sha256 "a95135a33c3d172d4364f3d91c1b19133d1324d2cd0fe19ee009bb840fe5b6b7"

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
