cask "nomachine-enterprise-client" do
  version "8.5.3_2"
  sha256 "4df30f4ba889a04422ca76539e9a90f272c94478866ccaa133e65b641483dd82"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine-enterprise-client_#{version}.dmg"
  name "NoMachine Enterprise Client"
  desc "Remote desktop software"
  homepage "https://www.nomachine.com/"

  livecheck do
    url "https://nomachine.com/support&destination=downloads&callback=L2Rvd25sb2FkLz9pZD0xNi"
    regex(/nomachine-enterprise-client[._-]v?(\d+(?:\.\d+)*_\d+)\.dmg/i)
  end

  pkg "NoMachine.pkg"

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete:    "/Applications/NoMachine.app",
            pkgutil:   [
              "com.nomachine.nomachine.NoMachine*.pkg",
              "com.nomachine.*",
            ],

            launchctl: [
              "com.nomachine.uninstall",
              "com.nomachine.launchconf",
            ]

  zap trash: [
        "/Library/Application Support/NoMachine",
        "~/.nx",
        "~/Library/Preferences/com.nomachine.nxdock.plist",
      ],
      rmdir: "~/Documents/NoMachine"
end
