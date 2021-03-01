cask "opensc" do
  version "0.21.0"
  sha256 "7d28313031d151a04e55158ed692bf0743380d9db0dbc1ab2f4e28320d16b52a"

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  appcast "https://github.com/OpenSC/OpenSC/releases.atom"
  name "OpenSC"
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
