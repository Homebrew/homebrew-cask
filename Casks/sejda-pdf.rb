cask "sejda-pdf" do
  version "7.2.4"
  sha256 "2a4925cc317af6b64ece0e260ef70d23792f94014c07042313e22bc302f94ad9"

  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg",
      verified: "sejda-cdn.com/"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{mac:.*?sejda-desktop_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Sejda PDF Desktop.app"
end
