cask "freecol" do
  version "0.11.6"
  sha256 "f771f9e31876050281bddb3cc18cb3e5e7f10b32426730c59a9688e1f3496cb1"

  # sourceforge.net/freecol/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freecol/freecol-#{version}-mac.tar.bz2"
  appcast "https://sourceforge.net/projects/freecol/rss"
  name "FreeCol"
  homepage "http://www.freecol.org/"

  app "FreeCol.app"
end
