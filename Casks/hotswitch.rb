cask "hotswitch" do
  version "1.21"
  sha256 "8469f8804214983ff57cf5f7553e63abcafdfffbca7f4a471a799636e1560639"

  url "https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip"
  appcast "https://github.com/oniatsu/HotSwitch/releases.atom"
  name "HotSwitch"
  desc "Fast window switcher using a 2-stroke hotkey"
  homepage "https://oniatsu.github.io/HotSwitch/"

  app "HotSwitch.app"
end
