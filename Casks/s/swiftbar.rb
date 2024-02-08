cask "swiftbar" do
  version "2.0.0"
  sha256 "626dacd22126dd3d9821892277ec7fdaf0390953344dc1d8ab5caa1abf6762b6"

  url "https://github.com/swiftbar/SwiftBar/releases/download/v#{version}/SwiftBar.v#{version}.b520.zip",
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
