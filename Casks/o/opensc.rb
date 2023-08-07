cask "opensc" do
  version "0.23.0"
  sha256 "9e81cf6dd93fa209c27b61714e9dfc7e63f6d79abf656a586e542ed01e0c3f07"

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  name "OpenSC"
  desc "Smart card libraries and utilities"
  homepage "https://github.com/OpenSC/OpenSC/wiki"

  pkg "OpenSC #{version}.pkg"

  uninstall script:    {
              executable: "/usr/local/bin/opensc-uninstall",
              sudo:       true,
            },
            pkgutil:   [
              "org.opensc-project.mac.opensctoken",
              "org.opensc-project.startup",
            ],
            launchctl: [
              "org.opensc-project.mac.opensc-notify",
              "org.opensc-project.mac.pkcs11-register",
            ]

  zap trash: "~/Library/Saved Application State/org.opensc-project.mac.opensctoken.OpenSCTokenApp.savedState"
end
