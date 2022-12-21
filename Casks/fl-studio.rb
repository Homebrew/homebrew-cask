cask "fl-studio" do
  version "21.0.0.2860"
  sha256 "5a6927f15a841afa96b19cdc8d26b98f4a1e625b78835f7a95efc32742307359"

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
