cask "eaccess" do
  version "1.13.2"
  sha256 "edb3eb022f2147e12d722f234ef12c7ec5c3f937004f3dd6e0165883fc5e7de1"

  url "https://glutz.com/service/downloads/?dwnldid=97676"
  appcast "https://glutz.com/service/downloads/soft-und-firmware/"
  name "eAccess Desktop"
  homepage "https://glutz.com/service/download/software-and-firmware/"

  app "eAccess Desktop.app"
  binary "#{appdir}/eAccess Desktop.app/Contents/MacOS/eAccessServer"

  uninstall quit: "com.glutz.eaccessdesktop"

  zap trash: [
    "~/Library/Caches/com.glutz.eaccessdesktop",
    "~/Library/Preferences/com.glutz.eAccess Desktop.plist",
    "~/Library/Saved Application State/com.glutz.eaccessdesktop.savedState",
  ]
end
