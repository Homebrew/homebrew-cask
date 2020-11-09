cask "nomachine-enterprise-client" do
  version "6.12.3_8"
  sha256 "ef8ba9d97652799128cb0ba409508a8984fa15fbe72c3236ad3d3d6501267851"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine-enterprise-client_#{version}.dmg"
  appcast "https://www.nomachine.com/download/download&id=15"
  name "NoMachine Enterprise Client"
  homepage "https://www.nomachine.com/"

  pkg "NoMachine.pkg"

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete:    "/Applications/NoMachine.app",
            pkgutil:   "com.nomachine.nomachine.NoMachine*.pkg",
            launchctl: [
              "com.nomachine.uninstall",
              "com.nomachine.nxlaunchconf",
            ]
end
