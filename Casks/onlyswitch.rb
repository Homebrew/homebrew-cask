cask "onlyswitch" do
  version "1.7"
  sha256 "154bf8efc81eec78fe3f18934fb64205b0499dd042ea54cc2e363033e41bd975"

  url "https://github.com/jacklandrin/OnlySwitch/releases/download/release_#{version}/OnlySwitch.dmg"
  name "onlyswitch"
  desc "All-in-One status bar button, hide MacBook Pro's notch, dark mode, Shortcuts"
  homepage "https://github.com/jacklandrin/OnlySwitch"

  app "Only Switch.app"
end
