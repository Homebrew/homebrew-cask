cask "swiftbar" do
  version "2.0.1,536"
  sha256 "ac70a9cbdde20d58dae27d360764aa42c3698f6e1bc4618c4b03297a2cee67fa"

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
  depends_on macos: ">= :big_sur"

  app "SwiftBar.app"

  zap trash: [
    "~/Library/Application Scripts/com.ameba.SwiftBar-LaunchAtLoginHelper",
    "~/Library/Caches/com.ameba.SwiftBar",
    "~/Library/Containers/com.ameba.SwiftBar-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ameba.SwiftBar.plist",
  ]
end
