cask "sejda-pdf" do
  version "7.0.9"
  sha256 "ee6720ea93171dc2c53d209dc51e1b2011c068d7180242ba3fda561593490ac8"

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
