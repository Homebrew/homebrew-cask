cask "maczip" do
  version "2.4"
  sha256 "4d5ab6cc2ca41415930d3d82decdff677591de53574bdda42f04c7a659915cde"

  url "https://cdn.awehunt.com/ezip/release/MacZip_V#{version}.dmg"
  name "MacZip"
  desc "Utility to open, create and modify archive files"
  homepage "https://ezip.awehunt.com/"

  livecheck do
    url "https://ezip.awehunt.com/download?s=web"
    strategy :header_match
  end

  auto_updates true

  app "MacZip.app"

  zap trash: [
    "~/Library/Application Scripts/com.jinghaoshe.ezip",
    "~/Library/Containers/com.jinghaoshe.ezip",
    "~/Library/Preferences/com.jinghaoshe.eZipAssistant.plist", # eZip Assistant
    "~/Library/WebKit/com.jinghaoshe.ezip",
  ]
end
