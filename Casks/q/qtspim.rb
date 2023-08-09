cask "qtspim" do
  version "9.1.24"
  sha256 "3842fa065851d4493e139dae500f37dd5dd33f267c69115ec75e68411985ace1"

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
