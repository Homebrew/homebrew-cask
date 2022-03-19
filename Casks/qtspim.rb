cask "qtspim" do
  version "9.1.23"
  sha256 "3e5bc9ec15169483cbb51eb4de7687bbad025cabfcab65883f5c6ed7434ecb61"

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.mpkg.zip",
      verified: "downloads.sourceforge.net/spimsimulator/"
  name "QtSpim"
  desc "Simulator that runs MIPS32 assembly language programs"
  homepage "https://spimsimulator.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/spimsimulator/files/"
    regex(/QtSpim[._-]v?(\d+\.\d+\.\d+)[._-]mac\.(?:mpkg|pkg)(?:\.zip)?/i)
  end

  pkg "QtSpim.mpkg/Contents/Packages/QtSpim.pkg"

  uninstall pkgutil: "org.larusstone.pkg.QtSpim"
end
