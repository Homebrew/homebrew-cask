cask "istherenet" do
  version "1.6.2"
  sha256 "6d6c781387f82869b8bd0a0db1d74f8f2cba367e8972f4814e0aa7bcb5963876"

  url "https://files.lowtechguys.com/releases/IsThereNet-#{version}.dmg"
  name "IsThereNet"
  desc "Your internet connection status at a glance"
  homepage "https://lowtechguys.com/istherenet/"

  livecheck do
    url "https://files.lowtechguys.com/istherenet/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "IsThereNet.app"

  uninstall quit:       "com.lowtechguys.IsThereNet",
            login_item: "IsThereNet"

  zap trash: [
    "~/.config/istherenet/",
    "~/Library/Application Scripts/com.lowtechguys.IsThereNet",
    "~/Library/Preferences/com.lowtechguys.IsThereNet.plist",
    "~/Library/WebKit/com.lowtechguys.IsThereNet",
  ]
end
