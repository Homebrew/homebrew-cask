cask "sejda-pdf" do
  version "7.1.5"
  sha256 "94ccff984e1a2f7a225b638e4ea9395b970b5785753534b5557c1fba874c0223"

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
