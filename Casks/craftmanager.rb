cask "craftmanager" do
  version "1.0.101"
  sha256 "d9896be199be8af82d550359f9bb47b97724f4e67eb585db3436e0e06f7c400e"

  url "https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip"
  appcast "https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml"
  name "CraftManager"
  homepage "https://www.invisionapp.com/craft"

  app "CraftManager.app"
end
