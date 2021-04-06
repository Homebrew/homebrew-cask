cask "maczip" do
  version "2.1"
  sha256 "79b8a75f6875827aa69df0e27f8e1e1c3930d4db0249ee6477f74d137ed77ec0"

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
