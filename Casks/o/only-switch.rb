cask "only-switch" do
  version "3.2.0"
  sha256 "821b45a66a1e6e5688a03a43bd0240763d1fc7e67b8414b1dbea179aaf75cf24"

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
