cask "fl-studio" do
  version "21.0.0.2855"
  sha256 "87745d751b10d6277c155dfb0d47c650d53e2c424fa18a24686b4f4f1918e076"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name "FL Studio"
  desc "Digital audio production application"
  homepage "https://www.image-line.com/flstudio/"

  livecheck do
    url "https://support.image-line.com/redirect/flstudio20_mac_installer"
    strategy :header_match
  end

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio21"

  zap trash: [
    "~/Library/Caches/com.image-line.flstudio",
    "~/Library/Preferences/com.image-line.flstudio.plist",
  ]
end
