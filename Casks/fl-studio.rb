cask "fl-studio" do
  version "20.7.99.1273"
  sha256 "b2c3649239b8851eeae00c08d14dff5f66113c1b62562d31cacc36a10c070a30"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer"
  name "FL Studio"
  homepage "https://www.image-line.com/flstudio/"

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio64"
end
