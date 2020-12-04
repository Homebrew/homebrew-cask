cask "eaccess" do
  version "1.13.3"
  sha256 "b496682ccaa4b90bdb7a9ae81b631e714235f81481d985c3c752c313dc7d7058"

  url "https://glutz.com/service/downloads/?dwnldid=97676"
  appcast "https://glutz.com/service/downloads/soft-und-firmware/"
  name "eAccess Desktop"
  desc "Software for eAccess devices"
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
