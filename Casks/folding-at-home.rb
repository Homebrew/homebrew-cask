cask "folding-at-home" do
  version "7.6.21"
  sha256 "3a3b677bfe41ed267917b4d4f131576979d8347ffb52e57b2004b53c8ef9908f"

  url "https://download.foldingathome.org/releases/public/release/fah-installer/osx-10.11-64bit/v#{version.major_minor}/fah-installer_#{version}_x86_64.mpkg.zip"
  appcast "https://download.foldingathome.org/releases/public/release/fah-installer/osx-10.11-64bit/v#{version.major_minor}/"
  name "Folding@home"
  desc "Graphical interface control for Folding"
  homepage "https://foldingathome.org/"

  pkg "fah-installer_#{version}_x86_64.pkg"

  uninstall pkgutil:   "org.foldingathome.*",
            launchctl: "org.foldingathome.fahclient",
            quit:      [
              "org.foldingathome.fahviewer",
              "org.foldingathome.fahcontrol",
            ]
end
