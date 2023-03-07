cask "send-anywhere" do
  version "23.3.7"
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
end
