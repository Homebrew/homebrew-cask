cask "deluge" do
  version "1.3.15.1"
  sha256 "a78a477f0a492c96cfa3e68a6551c36c6b451fc91b19df433027ef189f757baa"

  url "https://ftp.osuosl.org/pub/deluge/mac_osx/deluge-#{version}-macosx-x64.dmg",
      verified: "ftp.osuosl.org/"
  name "Deluge"
  desc "BitTorrent client"
  homepage "https://deluge-torrent.org/"

  livecheck do
    url "https://ftp.osuosl.org/pub/deluge/mac_osx/?C=M;O=D"
    regex(/href=["']?deluge[._-]v?(\d+(?:\.\d+)+)[._-][a-z0-9._-]*\.dmg/i)
  end

  app "Deluge.app"

  zap trash: [
    "~/.config/deluge/",
    "~/Library/Preferences/org.deluge.plist",
    "~/Library/Saved Application State/org.deluge.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
