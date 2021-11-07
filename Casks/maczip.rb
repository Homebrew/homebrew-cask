cask "maczip" do
  version "2.2"
  sha256 "186b4facde633ce15df4d6f36c927d517121cfdc75fc564b77d8bf6b003e7120"

  url "https://cdn.awehunt.com/ezip/release/MacZip_V#{version}.dmg"
  name "MacZip"
  desc "Utility to open, create and modify archive files"
  homepage "https://ezip.awehunt.com/"

  livecheck do
    url "https://ezip.awehunt.com/download?s=web"
    strategy :header_match
  end

  app "MacZip.app"

  zap trash: [
    "~/Library/Application Scripts/com.jinghaoshe.ezip",
    "~/Library/Containers/com.jinghaoshe.ezip",
    "~/Library/Preferences/com.jinghaoshe.eZipAssistant.plist", # eZip Assistant
    "~/Library/WebKit/com.jinghaoshe.ezip",
  ]
end
