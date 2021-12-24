cask "only-switch" do
  version "1.5"
  sha256 "e56733ed085ad60f22ffbea60c574073245d21f56bfa2b0dbb3d7d2983e86ccf"

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
