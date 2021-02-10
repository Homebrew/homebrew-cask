cask "hyperswitch" do
  version "0.2.592-dev"
  sha256 "7e4a24e160e5ff77624efbde93fb7ae74dced46f4bfeec869c6184437ca4cf1a"

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  name "HyperSwitch"
  homepage "https://bahoom.com/hyperswitch/"

  livecheck do
    url "https://bahoom.com/hyperswitch/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "HyperSwitch.app"

  zap trash: [
    "~/Library/Preferences/com.bahoom.HyperSwitch.plist",
    "~/Library/Caches/com.bahoom.HyperSwitch",
  ]
end
