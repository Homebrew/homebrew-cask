cask "send-anywhere" do
  version "21.4.2"
  sha256 :no_check

  url "https://update.send-anywhere.com/osx_downloads/Send%20Anywhere.dmg"
  name "Send Anywhere"
  desc "File sharing app"
  homepage "https://send-anywhere.com/"

  livecheck do
    skip "unversioned URL"
  end

  app "Send Anywhere.app"
end
