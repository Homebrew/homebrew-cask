cask "aerial@beta" do
  version "3.6.2"
  sha256 "0c0dafd73f896687c3e5cea79ec34cb38f9febc6cc4da0659624145036e7eae6"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip",
      verified: "github.com/JohnCoates/Aerial/"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*(?:[._-]?beta\d+)?)$/i)
  end

  conflicts_with cask: "aerial"
  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: [
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Preferences/ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
