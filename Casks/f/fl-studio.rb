cask "fl-studio" do
  version "21.2.2.3470"
  sha256 "1dc92897e43d435935caf5be45d6009e580b8eb2f6cf953176e1928a8ad5fd40"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name "FL Studio"
  desc "Digital audio production application"
  homepage "https://www.image-line.com/flstudio/"

  livecheck do
    url "https://support.image-line.com/redirect/flstudio20_mac_installer"
    strategy :header_match
  end

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FL21.2ONLINE"

  zap trash: [
    "~/Library/Caches/com.image-line.flstudio",
    "~/Library/HTTPStorages/com.image-line.flstudio",
    "~/Library/Preferences/com.image-line.flstudio.plist",
    "~/Library/Saved Application State/com.image-line.flstudio.savedState",
  ]
end
