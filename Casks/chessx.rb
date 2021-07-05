cask "chessx" do
  version "1.5.6"
  sha256 "391f4560d26b9efec40bdc523abe33a877572a5d496db5d8c39828c2ad622f2d"

  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg",
      verified: "downloads.sourceforge.net/chessx/"
  appcast "https://sourceforge.net/projects/chessx/rss?path=/chessx"
  name "ChessX"
  homepage "https://chessx.sourceforge.io/"

  pkg "chessx-installer.mpkg"

  uninstall pkgutil: "net.sourceforge.chessx"
end
