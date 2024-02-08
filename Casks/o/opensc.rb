cask "opensc" do
  version "0.24.0"
  sha256 "96eb53af88f91d25e6e127081bceb7687a8e53a5790914b5a47c6651783a0b44"

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  name "OpenSC"
  desc "Smart card libraries and utilities"
  homepage "https://github.com/OpenSC/OpenSC/wiki"

  pkg "OpenSC #{version}.pkg"

  uninstall launchctl: [
              "org.opensc-project.mac.opensc-notify",
              "org.opensc-project.mac.pkcs11-register",
            ],
            script:    {
              executable: "/usr/local/bin/opensc-uninstall",
              sudo:       true,
            },
            pkgutil:   [
              "org.opensc-project.mac.opensctoken",
              "org.opensc-project.startup",
            ]

  zap trash: "~/Library/Saved Application State/org.opensc-project.mac.opensctoken.OpenSCTokenApp.savedState"
end
