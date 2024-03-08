cask "send-anywhere" do
  version "24.3.81156"
  sha256 :no_check

  url "https://update.send-anywhere.com/osx_downloads/Send%20Anywhere.dmg"
  name "Send Anywhere"
  desc "File sharing app"
  homepage "https://send-anywhere.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Send Anywhere.app"

  zap trash: [
    "~/Library/Application Support/Send Anywhere",
    "~/Library/Logs/Send Anywhere",
    "~/Library/Preferences/com.estmob.osx.sendanywhere.plist",
  ]
end
