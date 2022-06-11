cask "fl-studio" do
  version "20.9.2.2459"
  sha256 "e59c4b4b1912fa14e6d6f8cdf8a57c6542bb7bbcd371b337b89a02a306dc4ffc"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name "FL Studio"
  desc "Digital audio production application"
  homepage "https://www.image-line.com/flstudio/"

  livecheck do
    url "https://support.image-line.com/redirect/flstudio20_mac_installer"
    strategy :header_match
  end

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FLStudio64"

  zap trash: [
    "~/Library/Caches/com.image-line.flstudio",
    "~/Library/Preferences/com.image-line.flstudio.plist",
  ]
end
