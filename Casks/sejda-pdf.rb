cask "sejda-pdf" do
  version "7.1.9"
  sha256 "8882c390eb08182f04c421dea4ecd46c1fc914bf2da7464272c12c846a397261"

  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg",
      verified: "sejda-cdn.com/"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
