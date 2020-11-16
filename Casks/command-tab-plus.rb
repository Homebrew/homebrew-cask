cask "command-tab-plus" do
  version "1.122"
  sha256 "fe8cafd5cb1c96c4ee8c41f12738e510d9ac67dd93f51ba22f85bf8e9f089aab"

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
