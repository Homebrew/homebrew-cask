cask "snapline" do
  version "3.9.0"
  sha256 "b8b1c000c1707c6348c287123985f295c7129d0f24428369eb01f1e1c94b823b"

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
