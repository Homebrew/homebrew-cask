cask "sejda-pdf" do
  version "7.0.12"
  sha256 "272a8ff20b903c7d059cce115f47549d6649a7d3d132ac9cb148f03fb3b2ed5b"

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
