cask "maczip" do
  version "2.3"
  sha256 "44748f73b31dcb583c3f1adfe356266ad368a19af31870a2ef432ae45615faf3"

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
