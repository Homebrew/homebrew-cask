cask "dockx" do
  version "1.1.0"
  sha256 "0591ca48abc970e397a58bfe4ad8d2fc37f193d148389a7e7410c090a8e12fa4"

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
