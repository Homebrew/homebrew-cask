cask "remote-wake-up" do
  version "1.4.1,34b"
  sha256 :no_check

  url "https://witt-software.com/downloads/remotewakeup/Remote%20Wake%20Up.dmg"
  name "Remote Wake Up"
  desc "Wake up devices with a click of a button"
  homepage "https://www.witt-software.com/remotewakeup/"

  livecheck do
    url "https://www.witt-software.com/downloads/remotewakeup/appcast.xml"
    strategy :sparkle
  end

  app "Remote Wake Up.app"

  zap trash: [
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/" \
      "Library/Preferences/com.mac-attender.Remote-Wake-Up.plist",
    "~/Library/Preferences/com.mac-attender.Remote-Wake-Up.plist",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/Library/Application Support/Remote Wake Up",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/Library/Cookies/Cookies.binarycookies",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/Library/Caches/com.plausiblelabs.crashreporter.data",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/" \
      "Library/Saved Application State/com.mac-attender.Remote-Wake-Up.savedState",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/Library/Caches/com.mac-attender.Remote-Wake-Up",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/" \
      "Library/Application Support/com.mac-attender.Remote-Wake-Up",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/" \
      "Library/Application Support/com.mac-attender.Remote_Wake_Up",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/tmp",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/SystemData",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up/Data/default.profraw",
    "~/Library/Containers/com.mac-attender.Remote-Wake-Up",
  ]
end
