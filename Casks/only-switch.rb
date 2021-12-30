cask "only-switch" do
  version "1.6"
  sha256 "0731ade444b81802d7a1b8ef9e683453daa059954431a7f047c4ab16a370b208"

  url "https://github.com/jacklandrin/OnlySwitch/releases/download/release_#{version}/OnlySwitch.dmg"
  name "only-switch"
  desc "All-in-one system and utility switches"
  homepage "https://github.com/jacklandrin/OnlySwitch"

  depends_on macos: ">= :monterey"

  app "Only Switch.app"

  zap trash: [
    "~/Library/OnlySwitch",
    "~/Library/Caches/jacklandrin.OnlySwitch",
    "~/Library/Application Support/OnlySwitch",
    "~/Library/Preferences/jacklandrin.OnlySwitch.plist",
  ]
end
