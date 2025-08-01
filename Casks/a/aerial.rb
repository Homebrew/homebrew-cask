cask "aerial" do
  version "3.6.0"
  sha256 "4e8f6579c91d9429cf0a6c3fa746fd7cfcfda9785892001870708fb83be659e0"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip",
      verified: "github.com/JohnCoates/Aerial/"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  conflicts_with cask: "aerial@beta"
  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: [
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
