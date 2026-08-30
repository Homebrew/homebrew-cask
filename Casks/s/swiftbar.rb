cask "swiftbar" do
  version "2.1.1,597"
  sha256 "fcdec490782d6587046304044951c63de49ac422fc63892a6fab2dd7bc70c0cd"

  url "https://github.com/swiftbar/SwiftBar/releases/download/v#{version.csv.first}/SwiftBar.v#{version.csv.first}.b#{version.csv.second}.zip"
  name "SwiftBar"
  desc "Menu bar customization tool"
  homepage "https://swiftbar.app/"

  livecheck do
    url "https://swiftbar.github.io/SwiftBar/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "SwiftBar.app"

  zap trash: [
    "~/Library/Application Scripts/com.ameba.SwiftBar-LaunchAtLoginHelper",
    "~/Library/Caches/com.ameba.SwiftBar",
    "~/Library/Containers/com.ameba.SwiftBar-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ameba.SwiftBar.plist",
  ]
end
