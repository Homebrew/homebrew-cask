cask "fl-studio" do
  version "21.1.1.3318"
  sha256 "b8119f8345796db4d1bc498bdbc9db3a12f4af14929036ef8928f9c9af4d11e4"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name "FL Studio"
  desc "Digital audio production application"
  homepage "https://www.image-line.com/flstudio/"

  livecheck do
    url "https://support.image-line.com/redirect/flstudio20_mac_installer"
    strategy :header_match
  end

  pkg "Install FL Studio.pkg"

  uninstall pkgutil: "com.Image-Line.pkg.FL21ONLINE"

  zap trash: [
    "~/Library/Caches/com.image-line.flstudio",
    "~/Library/HTTPStorages/com.image-line.flstudio",
    "~/Library/Preferences/com.image-line.flstudio.plist",
    "~/Library/Saved Application State/com.image-line.flstudio.savedState",
  ]
end
