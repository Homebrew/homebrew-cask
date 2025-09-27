cask "only-switch" do
  version "2.5.9"
  sha256 "ad49ee2eeb25b707f6cc602ff4681c1066beadcd7b14adc8150a4c4fc807d9bb"

  url "https://github.com/jacklandrin/OnlySwitch/releases/download/release_#{version}/OnlySwitch.dmg"
  name "OnlySwitch"
  desc "System and utility switches"
  homepage "https://github.com/jacklandrin/OnlySwitch"

  livecheck do
    url "https://jacklandrin.github.io/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Only Switch.app"

  zap trash: [
    "~/Library/Application Support/OnlySwitch",
    "~/Library/Caches/jacklandrin.OnlySwitch",
    "~/Library/OnlySwitch",
    "~/Library/Preferences/jacklandrin.OnlySwitch.plist",
  ]
end
