cask "only-switch" do
  version "1.6"
  sha256 "0731ade444b81802d7a1b8ef9e683453daa059954431a7f047c4ab16a370b208"

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
