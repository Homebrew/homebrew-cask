cask "chessx" do
  version "1.6.0"
  sha256 "40caf7d6fa85f934a539420a6cc5844d0c5bee1667889b8c59a0caeb10002c52"

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
