cask "command-tab-plus" do
  version "1.121"
  sha256 "7f06dc9c5c9dab7c1de3adba608335aff6d50a0522e6fb932643bd8a0a6d9547"

  url "https://noteifyapp.com/download/Command-Tab%20Plus.dmg"
  appcast "https://macplus-software.com/downloads/Command-Tab.xml"
  name "Command-Tab Plus"
  homepage "https://noteifyapp.com/command-tab-plus/"

  app "Command-Tab Plus.app"

  zap trash: [
    "/Users/Shared/Command-Tab Plus",
    "~/Library/Application Support/Command-Tab Plus",
    "~/Library/Caches/com.sergey-gerasimenko.Command-Tab",
  ]
end
