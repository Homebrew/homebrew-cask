cask "hyperswitch" do
  version "0.3.10-dev"
  sha256 :no_check

  url "https://bahoom.com/hyperswitch/HyperSwitch.zip"
  name "HyperSwitch"
  desc "Keyboard window switcher"
  homepage "https://bahoom.com/hyperswitch/"

  livecheck do
    skip "No version information available"
  end

  app "HyperSwitch.app"

  zap trash: [
    "~/Library/Application Support/HyperSwitch",
    "~/Library/Preferences/com.bahoom.HyperSwitch.plist",
  ]
end
