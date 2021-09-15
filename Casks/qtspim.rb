cask "qtspim" do
  version "9.1.21"
  sha256 "14fea7dd17e01c01820c9a52dfe577f764765ca7c4e9f7e99881e8badbe04595"

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.pkg",
      verified: "downloads.sourceforge.net/spimsimulator/"
  name "QtSpim"
  desc "Simulator that runs MIPS32 assembly language programs"
  homepage "https://spimsimulator.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/spimsimulator/files/"
    regex(/QtSpim[._-]?(\d+(?:\.\d+)*)[._-]?mac\.pkg/i)
  end

  pkg "QtSpim_#{version}_mac.pkg"

  uninstall pkgutil: "org.larusstone.pkg.QtSpim"
end
