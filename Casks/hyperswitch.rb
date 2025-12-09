cask "hyperswitch" do
  version "0.3.10-dev"
  sha256 "def3904371833586e639c1bfa2c7b7f293f60bed1cc34020e528f6ec9ecdc8dd"

  url "https://bahoom.com/hyperswitch/HyperSwitch.zip"
  name "HyperSwitch"
  desc "Keyboard window switcher"
  homepage "https://bahoom.com/hyperswitch/"

  livecheck do
    url :homepage
    regex(/HyperSwitch[._-]?v?(\d+(?:\.\d+)+(?:-dev)?)/i)
  end

  app "HyperSwitch.app"

  zap trash: [
    "~/Library/Application Support/HyperSwitch",
    "~/Library/Preferences/com.bahoom.HyperSwitch.plist",
  ]
end
