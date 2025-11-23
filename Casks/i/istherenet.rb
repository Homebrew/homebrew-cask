cask "istherenet" do
  version "1.7.1"
  sha256 "dd2febaa9a8991e252153b4114921746947cb2c5b5a673ec4e285427837ceb4c"

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
