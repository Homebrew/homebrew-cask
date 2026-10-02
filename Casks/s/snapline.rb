cask "snapline" do
  version "2.43.3"
  sha256 "86ef79f746fb86f673889b98d0951db4c6ff8a6df5091e548880b20a74c24c36"

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
    "~/Library/Caches/Snapline",
    "~/Library/Preferences/com.ziadeh.Snapline.plist",
    "~/Library/Saved Application State/com.ziadeh.Snapline.savedState",
  ]
end
