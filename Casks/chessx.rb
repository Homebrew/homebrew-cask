cask "chessx" do
  version "1.5.4"
  sha256 "68f806e9ade5da2c1e2b4b54aafc0d62dabc182f984e35a184329cbac89ad631"

  # downloads.sourceforge.net/chessx/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast "https://sourceforge.net/projects/chessx/rss?path=/chessx"
  name "ChessX"
  homepage "https://chessx.sourceforge.io/"

  pkg "chessx-installer.mpkg"

  uninstall pkgutil: "net.sourceforge.chessx"
end
