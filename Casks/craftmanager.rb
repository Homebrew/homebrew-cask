cask "craftmanager" do
  version "1.5.2"
  sha256 :no_check

  url "https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip"
  name "CraftManager"
  desc "Helps keep your Craft tools up to date"
  homepage "https://www.invisionapp.com/craft"

  livecheck do
    url "https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "CraftManager.app"

  zap trash: [
    "~/Library/Application Support/CraftManager",
    "~/Library/Caches/com.invisionlabs.CraftManager",
    "~/Library/Preferences/com.invisionlabs.CraftManager.plist",
  ]
end
