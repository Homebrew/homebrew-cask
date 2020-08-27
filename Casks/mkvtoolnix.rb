cask "mkvtoolnix" do
  version "49.0.0"
  sha256 "bfdabd670a40dd61cd4d45e78fa5bdff233781c1bff92b8cd97e8ba5318ec4dd"

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
