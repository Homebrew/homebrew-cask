cask "folding-at-home" do
  version "7.6.20"
  sha256 "e518f2c1886f5e132f67b8658263b295ac7091b4ff56eb301148f8c4d008d357"

  url "https://download.foldingathome.org/releases/public/release/fah-installer/osx-10.11-64bit/v#{version.major_minor}/fah-installer_#{version}_x86_64.mpkg.zip"
  appcast "https://download.foldingathome.org/js/fah-downloads.js"
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
