cask "aerial" do
  version "3.3.6"
  sha256 "6f920dd293c67c416abf4a1ec893d5df731eb582f3d6dea7f3c270b169be16f0"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip",
      verified: "github.com/JohnCoates/Aerial/"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  conflicts_with cask: "homebrew/cask-versions/aerial-beta"
  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: [
    "Application Support/Aerial",
    "ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/" \
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/" \
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
