cask "sejda-pdf" do
  version "7.1.6"
  sha256 "7fe6e3499fde8d7ca60f37dfaea605c601c30564d6d81eeef5c7e03303f7521c"

  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg",
      verified: "sejda-cdn.com/"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
