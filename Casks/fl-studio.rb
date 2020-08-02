cask "fl-studio" do
  version "20.7.2.1143"
  sha256 "cc10836bc05bb17ddbcd620c5fc2edfd94405cfa0a5538dbd78ae5ffed8a6d0e"

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer"
  name "FL Studio"
  homepage "https://www.image-line.com/flstudio/"

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio64"
end
