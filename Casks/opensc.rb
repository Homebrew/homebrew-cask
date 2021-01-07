cask "opensc" do
  version "0.20.0"
  sha256 "fd456cd3920bead10d9f1845623408eb16c6b0f934f960d52d5850f0ee205eab"

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  name "OpenSC"
  homepage "https://github.com/OpenSC/OpenSC/wiki"

  livecheck do
    url :url
    strategy :git
  end

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
              "opensc-notify",
              "pkcs11-register",
            ]
end
