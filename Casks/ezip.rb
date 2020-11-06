cask "ezip" do
  version "1.9.1"
  sha256 "76db10f768ed923a8e7b1aa492698d06533499455cbe18cbf1efa393a2918bcd"

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://ezip.awehunt.com/download?s=web"
  name "ezip"
  desc "Utility to open, create and modify archive files"
  homepage "https://ezip.awehunt.com/"

  app "eZip.app"

  zap trash: [
    "~/Library/Application Scripts/com.jinghaoshe.ezip",
    "~/Library/Containers/com.jinghaoshe.ezip",
    "~/Library/Preferences/com.jinghaoshe.eZipAssistant.plist", # eZip Assistant
    "~/Library/WebKit/com.jinghaoshe.ezip",
  ]
end
