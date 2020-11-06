cask "craftmanager" do
  version "1.0.103"
  sha256 "9062d87c880dbebda9900860bc867b1ac8d209e0688678108ac17a990984b5f6"

  url "https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip"
  appcast "https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml"
  name "CraftManager"
  homepage "https://www.invisionapp.com/craft"

  app "CraftManager.app"
end
