cask "snapline" do
  version "4.2.0"
  sha256 "51f4680f8e9d76decaf990adaeb60b096318cee9d1024ebd8434faf0dc7f02c8"

  url "https://snap-line.app/updates/Snapline-#{version}.zip"
  name "Snapline"
  desc "Screenshot, screen recording and GIF tool"
  homepage "https://snap-line.app/"

  livecheck do
    url "https://snap-line.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Snapline.app"

  zap trash: [
    "~/Library/Application Support/Snapline",
    "~/Library/Caches/com.ziadeh.Snapline",
    "~/Library/Caches/Snapline",
    "~/Library/HTTPStorages/com.ziadeh.Snapline",
    "~/Library/Preferences/com.ziadeh.Snapline.plist",
    "~/Library/Saved Application State/com.ziadeh.Snapline.savedState",
  ]
end
