cask "sejda-pdf" do
  version "7.0.11"
  sha256 "fe34218df42d76abb5faecc352bc076bb0f7be3e2d42edd04e91cb0e6b2c7137"

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
