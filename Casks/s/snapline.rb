cask "snapline" do
  version "4.1.0"
  sha256 "23f1b011903d26ace7b188b3004e5e1a94aade5404cd655615345050b4a7124d"

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
