cask "inssider" do
  version "0.0.4.5,5"
  sha256 "aae290a9e1c35db4b923ff6cf64332b1825ab82a848761e10debdddf3e3f9cfa"

  url "https://metageek-desktop.nyc3.digitaloceanspaces.com/Installers/Mac/inSSIDer-#{version.after_comma}/inSSIDer.dmg",
      verified: "nyc3.digitaloceanspaces.com/Installers/Mac/"
  appcast "https://metageek-desktop.nyc3.digitaloceanspaces.com/Installers/Mac/inSSIDer-#{version.after_comma}/inssider_#{version.after_comma}_mac_appcast.xml"
  name "inSSIDer"
  homepage "https://www.metageek.com/products/inssider/"

  app "inSSIDer.app"
end
