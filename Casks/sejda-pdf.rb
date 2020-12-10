cask "sejda-pdf" do
  version "7.1.5"
  sha256 "a7cae7e79242cc2b2c04df03da8f2f2079a2316f82db27863d2f398c7e998450"

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
