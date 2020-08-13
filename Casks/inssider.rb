cask "inssider" do
  version "0.0.2.14,5"
  sha256 "8d995306facb7d1341a54521a7cd8e76290ff44763fa00a7dfca85932f82a524"

  # nyc3.digitaloceanspaces.com/Installers/Mac/ was verified as official when first introduced to the cask
  url "https://metageek-desktop.nyc3.digitaloceanspaces.com/Installers/Mac/inSSIDer-#{version.after_comma}/inSSIDer.dmg"
  appcast "https://metageek-desktop.nyc3.digitaloceanspaces.com/Installers/Mac/inSSIDer-#{version.after_comma}/inssider_#{version.after_comma}_mac_appcast.xml"
  name "inSSIDer"
  homepage "https://www.metageek.com/products/inssider/"

  app "inSSIDer.app"
end
