cask "craftmanager" do
  version "1.0.111,236"
  sha256 :no_check

  url "https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip"
  name "CraftManager"
  desc "Helps keep your Craft tools up to date"
  homepage "https://www.invisionapp.com/craft"

  livecheck do
    url "https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "CraftManager.app"
end
