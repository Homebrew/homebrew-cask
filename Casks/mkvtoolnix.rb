cask "mkvtoolnix" do
  version "50.0.0"
  sha256 "72d0c459db320dcf537009b7d1593e0712e5bc40cdd54bff3f85ae4cdb551d46"

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  appcast "https://www.bunkus.org/blog/feed/"
  name "MKVToolNix"
  homepage "https://mkvtoolnix.download/"

  conflicts_with formula: "mkvtoolnix"
  depends_on macos: ">= :mojave"

  app "MKVToolNix-#{version}.app"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvextract"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvinfo"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvmerge"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvpropedit"
end
