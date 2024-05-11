cask "dockx" do
  version "1.1.7"
  sha256 "185a807a099a4b75e893ecacd2f5ffa9ac3c8425b31eef64cfbc16e2b61220df"

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
