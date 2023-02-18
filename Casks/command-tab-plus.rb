cask "command-tab-plus" do
  version "2.6"
  sha256 :no_check

  url "https://noteifyapp.com/download/Command-Tab%20Plus.dmg"
  name "Command-Tab Plus"
  desc "Keyboard-centric application and window switcher"
  homepage "https://noteifyapp.com/command-tab-plus/"

  livecheck do
    url "https://macplus-software.com/downloads/Command-Tab.xml"
    strategy :sparkle
  end

  app "Command-Tab Plus 2.app"

  zap trash: [
    "~/Library/Application Support/com.sergey-gerasimenko.Command-Tab-Plus-2",
    "~/Library/Caches/com.sergey-gerasimenko.Command-Tab-Plus-2",
    "~/Library/Preferences/com.sergey-gerasimenko.Command-Tab-Plus-2.plist",
  ]
end
