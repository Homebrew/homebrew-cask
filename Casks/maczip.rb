cask "maczip" do
  version "2.0.1"
  sha256 "acd1f3f61a93e227166c15e767fe5ae488c62786bd278ffd11fd251a79e14dad"

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
