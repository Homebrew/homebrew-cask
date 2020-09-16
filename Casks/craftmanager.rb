cask "craftmanager" do
  version "1.0.100"
  sha256 "f68be63744393960400f57914753016427dd327660b006c4d3ebaa8a9ef53078"

  url "https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip"
  appcast "https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml"
  name "CraftManager"
  homepage "https://www.invisionapp.com/craft"

  app "CraftManager.app"
end
