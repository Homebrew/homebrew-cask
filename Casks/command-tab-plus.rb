cask "command-tab-plus" do
  version "1.124,374"
  sha256 :no_check

  url "https://noteifyapp.com/download/Command-Tab%20Plus.dmg"
  name "Command-Tab Plus"
  desc "Keyboard-centric application and window switcher"
  homepage "https://noteifyapp.com/command-tab-plus/"

  livecheck do
    url "https://macplus-software.com/downloads/Command-Tab.xml"
    strategy :sparkle
  end

  app "Command-Tab Plus.app"

  zap trash: [
    "/Users/Shared/Command-Tab Plus",
    "~/Library/Application Support/Command-Tab Plus",
    "~/Library/Caches/com.sergey-gerasimenko.Command-Tab",
  ]
end
