cask "qtspim" do
  version "9.1.24"
  sha256 "3842fa065851d4493e139dae500f37dd5dd33f267c69115ec75e68411985ace1"

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.mpkg.zip"
  name "QtSpim"
  desc "Simulator that runs MIPS32 assembly language programmes"
  homepage "https://spimsimulator.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/spimsimulator/files/"
    regex(/QtSpim[._-]v?(\d+\.\d+\.\d+)[._-]mac\.(?:mpkg|pkg)(?:\.zip)?/i)
  end

  pkg "QtSpim.mpkg/Contents/Packages/QtSpim.pkg"

  uninstall pkgutil: "org.larusstone.pkg.QtSpim"
end
