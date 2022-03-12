cask "swiftbar" do
  version "1.4.2"
  sha256 "074a9d2e90fff206644516638bff5b6516d7cf1b00d6f3227c6b7b5622dc9d75"

  url "https://github.com/swiftbar/SwiftBar/releases/download/v#{version}/SwiftBar.zip",
      verified: "github.com/swiftbar/SwiftBar/"
  name "SwiftBar"
  desc "Menu bar customization tool"
  homepage "https://swiftbar.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "SwiftBar.app"

  zap trash: [
    "~/Library/Application Scripts/com.ameba.SwiftBar-LaunchAtLoginHelper",
    "~/Library/Caches/com.ameba.SwiftBar",
    "~/Library/Containers/com.ameba.SwiftBar-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ameba.SwiftBar.plist",
  ]
end
