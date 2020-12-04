cask "command-tab-plus" do
  version "1.124"
  sha256 "b0abc2c323a399195f925f5456f6a3e1e9ccb4da36b6fd4736df73bd55f8dc6a"

  url "https://noteifyapp.com/download/Command-Tab%20Plus.dmg"
  appcast "https://macplus-software.com/downloads/Command-Tab.xml"
  name "Command-Tab Plus"
  desc "Keyboard-centric application and window switcher"
  homepage "https://noteifyapp.com/command-tab-plus/"

  app "Command-Tab Plus.app"

  zap trash: [
    "/Users/Shared/Command-Tab Plus",
    "~/Library/Application Support/Command-Tab Plus",
    "~/Library/Caches/com.sergey-gerasimenko.Command-Tab",
  ]
end
