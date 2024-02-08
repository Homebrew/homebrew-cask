cask "ha-menu" do
  version "2.7.1"
  sha256 "762d0f68ca71aff675df74f3aa6ffb03580dadc6e37ee880ba8c9284a8d1b9b2"

  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  name "HA Menu"
  desc "Menu Bar app to perform common Home Assistant functions"
  homepage "https://github.com/codechimp-org/ha-menu"

  depends_on macos: ">= :high_sierra"

  app "HA Menu.app"

  uninstall launchctl: "org.codechimp.HA-Menu",
            quit:      "org.codechimp.HA-Menu"

  zap trash: [
    "~/Library/Application Scripts/org.codechimp.HA-Menu",
    "~/Library/Application Scripts/org.codechimp.HA-Menu-Launcher",
    "~/Library/Containers/org.codechimp.HA-Menu",
    "~/Library/Containers/org.codechimp.HA-Menu-Launcher",
  ]
end
