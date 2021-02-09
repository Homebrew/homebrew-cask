cask "folding-at-home" do
  version "7.6.21"
  sha256 "c6a559f46e25aa7a9e67227affbccfef77527f663da80be6c55a4f7e7e29866f"

  url "https://download.foldingathome.org/releases/public/release/fah-installer/osx-10.11-64bit/v#{version.major_minor}/fah-installer_#{version}_x86_64.mpkg.zip"
  appcast "https://download.foldingathome.org/releases/public/release/fah-installer/osx-10.11-64bit/v#{version.major_minor}/"
  name "Folding@home"
  desc "Graphical interface control for Folding"
  homepage "https://foldingathome.org/"

  pkg "fah-installer_#{version}_x86_64-b.pkg"

  uninstall pkgutil:   "org.foldingathome.*",
            launchctl: "org.foldingathome.fahclient",
            quit:      [
              "org.foldingathome.fahviewer",
              "org.foldingathome.fahcontrol",
            ]

  zap trash: "/Library/Application Support/FAHClient"
end
