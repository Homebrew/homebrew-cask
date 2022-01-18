cask "aerial" do
  version "3.0.0"
  sha256 "c890fc715fdcd2b80533b0285fe3705ea3ffcef30476959e60b6b1134782911c"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  conflicts_with cask: "homebrew/cask-versions/aerial-beta"
  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: [
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/" \
    "Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/" \
    "ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
