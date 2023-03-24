cask "chessx" do
  version "1.5.8"
  sha256 "0b8e83f58b51053ea95f5a8c3bc96d3e428403844f1c213469362cd11869fdd9"

  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg",
      verified: "downloads.sourceforge.net/chessx/"
  name "ChessX"
  desc "Chess database"
  homepage "https://chessx.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/chessx/files/latest/download"
    strategy :header_match
  end

  pkg "chessx-installer.mpkg"

  uninstall pkgutil: "net.sourceforge.chessx"
end
