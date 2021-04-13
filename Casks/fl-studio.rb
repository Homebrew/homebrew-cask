cask "fl-studio" do
  version "20.8.3.1574"
  sha256 "bff1151928daa91a97222a70b4944545dedb87f7483e14c2927e7c0666c86372"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name "FL Studio"
  homepage "https://www.image-line.com/flstudio/"

  livecheck do
    url "https://support.image-line.com/redirect/flstudio20_mac_installer"
    strategy :header_match
  end

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio64"
end
