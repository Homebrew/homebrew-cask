cask "opensc-app" do
  version "0.27.1"
  sha256 "13370ea18678a53e2567fc1256bcf7a590e40ccf1c3362a24a805c3e9b5d07bf"

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  name "OpenSC"
  desc "Smart card libraries and utilities"
  homepage "https://github.com/OpenSC/OpenSC/wiki"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
