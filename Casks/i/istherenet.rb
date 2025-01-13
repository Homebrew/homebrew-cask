cask "istherenet" do
  version "1.7.0"
  sha256 "f5788db9b8c7a2650982baced73191e818b7bbddbca610c2dd125e9f5fcc2fa8"

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
