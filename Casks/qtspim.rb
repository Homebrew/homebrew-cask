cask "qtspim" do
  version "9.1.21"
  sha256 "14fea7dd17e01c01820c9a52dfe577f764765ca7c4e9f7e99881e8badbe04595"

  # downloads.sourceforge.net/spimsimulator/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.pkg"
  appcast "https://sourceforge.net/projects/spimsimulator/rss"
  name "QtSpim"
  homepage "https://spimsimulator.sourceforge.io/"

  pkg "QtSpim_#{version}_mac.pkg"

  uninstall pkgutil: "org.larusstone.pkg.QtSpim"
end
