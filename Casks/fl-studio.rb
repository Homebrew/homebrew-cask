cask "fl-studio" do
  version "20.8.4.2048"
  sha256 "0586a17cacdb9e267c452a547e601e33e92ad65f97d587111b72bf0a1e2f73f9"

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
