cask "deluge" do
  version "1.3.15.1"
  sha256 "a78a477f0a492c96cfa3e68a6551c36c6b451fc91b19df433027ef189f757baa"

  # ftp.osuosl.org/ was verified as official when first introduced to the cask
  url "https://ftp.osuosl.org/pub/deluge/mac_osx/deluge-#{version}-macosx-x64.dmg"
  appcast "https://ftp.osuosl.org/pub/deluge/mac_osx/?C=M;O=D"
  name "Deluge"
  desc "Cross-platform BitTorrent client"
  homepage "https://deluge-torrent.org/"

  app "Deluge.app"
end
