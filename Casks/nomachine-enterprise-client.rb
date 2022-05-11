cask "nomachine-enterprise-client" do
  version "7.9.2_1"
  sha256 "0bec52488743c1e7079310bca340dcfe14755e0d1bbb8a9f2ee763bcf75c340b"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine-enterprise-client_#{version}.dmg"
  name "NoMachine Enterprise Client"
  desc "Remote desktop software"
  homepage "https://www.nomachine.com/"

  livecheck do
    url "https://www.nomachine.com/download/download&id=15"
    regex(/nomachine-enterprise-client[._-]v?(\d+(?:\.\d+)*_\d+)\.dmg/i)
  end

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
