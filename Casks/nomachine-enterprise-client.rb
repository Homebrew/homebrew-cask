cask "nomachine-enterprise-client" do
  version "7.0.209_4"
  sha256 "c1479c19e5968a5cdeca7bdf0630e385be1f1cef2e1b331a80e2fff693ade642"

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
