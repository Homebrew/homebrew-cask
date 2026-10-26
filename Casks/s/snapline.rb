cask "snapline" do
  version "4.4.0"
  sha256 "2302899e3fea7c9485daef182ef3a467e3a6cd29c1f7d290a753e5269f69e89e"

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
