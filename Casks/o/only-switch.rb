cask "only-switch" do
  version "2.7.5"
  sha256 "5924bd59dc0e304bac28e246a047c19af6e2989b9648106fa87a487803dbc33d"

  url "https://github.com/jacklandrin/OnlySwitch/releases/download/release_#{version}/OnlySwitch.dmg"
  name "OnlySwitch"
  desc "System and utility switches"
  homepage "https://github.com/jacklandrin/OnlySwitch"

  livecheck do
    url "https://jacklandrin.github.io/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Only Switch.app"

  uninstall quit: "jacklandrin.OnlySwitch"

  zap trash: [
    "~/Library/Application Scripts/*.OnlySwitch.shared",
    "~/Library/Application Scripts/jacklandrin.OnlySwitch.OnlyWidget",
    "~/Library/Application Support/jacklandrin.OnlySwitch",
    "~/Library/Application Support/OnlySwitch",
    "~/Library/Caches/jacklandrin.OnlySwitch",
    "~/Library/Containers/jacklandrin.OnlySwitch.OnlyWidget",
    "~/Library/Group Containers/*.OnlySwitch.shared",
    "~/Library/HTTPStorages/jacklandrin.OnlySwitch",
    "~/Library/OnlySwitch",
    "~/Library/Preferences/jacklandrin.OnlySwitch.plist",
  ]
end
