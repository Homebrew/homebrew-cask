cask "opensc" do
  version "0.22.0"
  sha256 "defee8f8fb5a5de3a0d456768abe58427bf3ec11b09e196c1de9f8601dfd5cd8"

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
