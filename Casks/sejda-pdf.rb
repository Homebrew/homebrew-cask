cask "sejda-pdf" do
  version "7.2.4"
  sha256 "2a4925cc317af6b64ece0e260ef70d23792f94014c07042313e22bc302f94ad9"

  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg",
      verified: "sejda-cdn.com/"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
