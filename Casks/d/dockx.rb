cask "dockx" do
  version "1.1.13"
  sha256 "d8b6201bd1476ae1831a597421690a1160687afdcbc9b52c5a9e03a857acbbac"

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
  depends_on macos: ">= :big_sur"

  app "DockX.app"

  zap trash: [
    "~/Library/Application Scripts/com.6x.DockX",
    "~/Library/Containers/com.6x.DockX",
    "~/Library/Preferences/com.6x.DockX.plist",
  ]
end
