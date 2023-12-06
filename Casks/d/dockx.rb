cask "dockx" do
  version "1.0.9"
  sha256 "66238d89d702b9141ceb003b1e69e3489bdc90e96128134880ae44bdc4fd0e70"

  url "https://d-1251679148.file.myqcloud.com/download/DockX-#{version.csv.first}.dmg",
      verified: "d-1251679148.file.myqcloud.com/download/"
  name "DockX"
  desc "Display content in the dock and menu bar"
  homepage "https://dockx.app/"

  livecheck do
    url "https://dockx.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "DockX.app"

  zap trash: [
    "~/Library/Application Scripts/com.6x.DockX",
    "~/Library/Containers/com.6x.DockX",
    "~/Library/Preferences/com.6x.DockX.plist",
  ]
end
