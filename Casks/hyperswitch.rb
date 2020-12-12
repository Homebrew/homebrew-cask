cask "hyperswitch" do
  version "0.2.591-dev"
  sha256 "a031571695d204b50ade3c72b2e1512f3a07d1c1234820cb1f3a38fd8906709a"

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast "https://bahoom.com/hyperswitch/appcast.xml"
  name "HyperSwitch"
  homepage "https://bahoom.com/hyperswitch/"

  auto_updates true

  app "HyperSwitch.app"

  zap trash: [
    "~/Library/Preferences/com.bahoom.HyperSwitch.plist",
    "~/Library/Caches/com.bahoom.HyperSwitch",
  ]
end
