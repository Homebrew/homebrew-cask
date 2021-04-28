cask "craftmanager" do
  version "1.0.105,226"
  sha256 :no_check

  url "https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip"
  name "CraftManager"
  homepage "https://www.invisionapp.com/craft"

  livecheck do
    url "https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml"
    strategy :sparkle
  end

  app "CraftManager.app"
end
