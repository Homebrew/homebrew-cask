cask "swiftbar" do
  version "2.1.0,594"
  sha256 "54b425256f449dd90f8d167993cc65c3673bcd44d206e1aaf641a09fb58bc0da"

  url "https://github.com/swiftbar/SwiftBar/releases/download/v#{version.csv.first}/SwiftBar.v#{version.csv.first}.b#{version.csv.second}.zip",
      verified: "github.com/swiftbar/SwiftBar/"
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
