cask "fl-studio" do
  version "20.8.0.1350"
  sha256 "9263d9889e9196c181d9aa161694e772d1a46b1cd16e3b92c0586223bf4a5f1a"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer"
  name "FL Studio"
  homepage "https://www.image-line.com/flstudio/"

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio64"
end
