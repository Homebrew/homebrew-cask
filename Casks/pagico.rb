cask "pagico" do
  version "9.5.20200826"
  sha256 "e74130c736c4d6b397790b2f98abd0528c5927756f6728c126bd5edfb5fbc3b1"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
