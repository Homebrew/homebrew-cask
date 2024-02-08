cask "remote-wake-up" do
  version "1.4.1"
  sha256 :no_check

  url "https://witt-software.com/downloads/remotewakeup/Remote%20Wake%20Up.dmg"
  name "Remote Wake Up"
  desc "Wake up devices with a click of a button"
  homepage "https://www.witt-software.com/remotewakeup/"

  livecheck do
    url "https://www.witt-software.com/downloads/remotewakeup/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Remote Wake Up.app"

  zap trash: [
    "~/Library/Application Support/com.mac-attender.Remote-Wake-Up",
    "~/Library/Application Support/com.mac-attender.Remote_Wake_Up",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/",
    "~/Library/Preferences/com.mac-attender.Remote-Wake-Up.plist",
    "~/Library/Saved Application State/com.mac-attender.Remote-Wake-Up.savedState",
  ]
end
