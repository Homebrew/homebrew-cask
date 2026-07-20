cask "opensc-app" do
  version "0.27.1"
  sha256 "61c2c7b9329a65e43a34151016530d54859561d8fbbe7a723911119abf0ccd7f"

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  name "OpenSC"
  desc "Smart card libraries and utilities"
  homepage "https://github.com/OpenSC/OpenSC/wiki"

  depends_on :macos

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
