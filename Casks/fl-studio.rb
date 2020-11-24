cask "fl-studio" do
  version "20.8.0.1324"
  sha256 "34f2e3623d218ada2505d3d761f4d63cd3216ddda95080c868128f9fc31ac406"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer"
  name "FL Studio"
  homepage "https://www.image-line.com/flstudio/"

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio64"
end
