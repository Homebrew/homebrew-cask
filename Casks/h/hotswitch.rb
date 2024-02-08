cask "hotswitch" do
  version "1.21"
  sha256 :no_check

  url "https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip"
  name "HotSwitch"
  desc "Fast window switcher using a 2-stroke hotkey"
  homepage "https://oniatsu.github.io/HotSwitch/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "HotSwitch.app"

  zap trash: "~/Library/Preferences/com.oniatsu.HotSwitch.plist"
end
