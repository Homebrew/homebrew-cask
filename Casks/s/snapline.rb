cask "snapline" do
  version "4.0.0"
  sha256 "5d3ee63a254feda09753241e11884302c987a036cd643e6e364ea9dfd7445d71"

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
