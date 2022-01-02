cask "only-switch" do
  version "1.7"
  sha256 "154bf8efc81eec78fe3f18934fb64205b0499dd042ea54cc2e363033e41bd975"

  url "https://github.com/jacklandrin/OnlySwitch/releases/download/release_#{version}/OnlySwitch.dmg"
  name "OnlySwitch"
  desc "System and utility switches"
  homepage "https://github.com/jacklandrin/OnlySwitch"

  depends_on macos: ">= :monterey"

  app "Only Switch.app"

  zap trash: [
    "~/Library/Application Support/OnlySwitch",
    "~/Library/Caches/jacklandrin.OnlySwitch",
    "~/Library/OnlySwitch",
    "~/Library/Preferences/jacklandrin.OnlySwitch.plist",
  ]
end
