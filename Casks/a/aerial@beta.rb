cask "aerial@beta" do
  version "3.2.7beta9"
  sha256 "ab54eb9a072ed770ee0bebec73f4537958b7ba3dcad4fba761679146096c6031"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip",
      verified: "github.com/JohnCoates/Aerial/"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  livecheck do
    url "https://github.com/JohnCoates/Aerial/releases?q=prerelease%3Atrue&expanded=true"
    regex(/^v?(\d+(?:\.\d+)*beta\d+)$/i)
  end

  conflicts_with cask: "aerial"
  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: [
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Caches/Aerial/",
    "~/Library/Containers/com.apple.ScreenSaver.*/Data/Library/Preferences/ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
