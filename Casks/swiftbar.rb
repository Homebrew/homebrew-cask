cask "swiftbar" do
  version "1.4.1"
  sha256 "3096c5cf0df3ec5a3ed8e004a024bd2ddddd8bfbb7334797d27ca8a2f5accccd"

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
