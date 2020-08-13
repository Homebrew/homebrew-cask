cask "craftmanager" do
  version "1.0.99"
  sha256 "894b0351b48c303a65d2376f08036e1e64f84190305500a1150cf87f08111284"

  url "https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip"
  appcast "https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml"
  name "CraftManager"
  homepage "https://www.invisionapp.com/craft"

  app "CraftManager.app"
end
