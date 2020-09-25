cask "fl-studio" do
  version "20.7.99.1227"
  sha256 "78c68323ae44041a62cad6c18cd299e7cfc8869a0577b49c151289b903f6c00f"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer"
  name "FL Studio"
  homepage "https://www.image-line.com/flstudio/"

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio64"
end
