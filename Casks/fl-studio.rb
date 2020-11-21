cask "fl-studio" do
  version "20.8.0.1324"
  sha256 "a68704718c3f786ad8bfd2fe41bf1205d5ccdb57f7ffa7427500f0a281dd6e12"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer"
  name "FL Studio"
  homepage "https://www.image-line.com/flstudio/"

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio64"
end
