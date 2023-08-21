cask "dockx" do
  version "1.0.0,11"
  sha256 "ae3054aac17398ae54763d844513bed1e384f9573e418e7895cd0a0e2c4affe8"

  url "https://d-1251679148.file.myqcloud.com/download/DockX-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "d-1251679148.file.myqcloud.com/download/"
  name "DockX"
  desc "Display content in the Dock and menu bar"
  homepage "https://dockx.app/"

  livecheck do
    url "https://dockx.app/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "DockX.app"

  zap trash: [
    "~/Library/Application Scripts/com.6x.DockX",
    "~/Library/Containers/com.6x.DockX",
    "~/Library/Preferences/com.6x.DockX.plist",
  ]
end
