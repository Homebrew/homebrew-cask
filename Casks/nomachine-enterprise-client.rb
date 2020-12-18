cask "nomachine-enterprise-client" do
  version "7.0.208_4"
  sha256 "d2ef2b881188bc1faf3bce971d69fa2f1a8b9a596625f9a66e9d7904acb12af0"

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
