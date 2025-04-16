cask "dockx" do
  version "1.1.16"
  sha256 "1324f12627d31c1b8ca9efccd802f6ef5b3b1c506b785da0f7a765171f98fd4c"

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
