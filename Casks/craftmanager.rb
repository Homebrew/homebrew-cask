cask "craftmanager" do
  version "1.0.103,216"
  sha256 :no_check

  url "https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip"
  appcast "https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml"
  name "CraftManager"
  homepage "https://www.invisionapp.com/craft"

  app "CraftManager.app"
end
