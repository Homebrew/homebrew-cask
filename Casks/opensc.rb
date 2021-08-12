cask "opensc" do
  version "0.22.0"
  sha256 "3f3fa6e0378af84c2d57ea245ac0352a9ff840973bed010e6c1d4c506aaf6f07"

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
end
