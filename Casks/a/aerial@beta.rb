cask "aerial@beta" do
  version "4.1.1"
  sha256 "97d8b3f4ad6a8ef77ad6e8bd0ecb009a263b4fed3a6dfa165a940fcb0b7c9fed"

  url "https://github.com/AerialScreensaver/Aerial/releases/download/v#{version}/Aerial-#{version}.zip"
  name "Aerial"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]?beta\d+)?)$/i)
  end

  auto_updates true
  conflicts_with cask: "aerial"
  depends_on macos: :tahoe

  app "Aerial.app"

  uninstall quit: "com.glouel.Aerial-App"

  zap trash: [
    "/Users/Shared/Aerial",
    "~/Library/Application Scripts/com.glouel.Aerial-App.AerialScreenSaverExtension",
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/com.glouel.Aerial-App",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Containers/com.glouel.Aerial-App",
    "~/Library/Containers/com.glouel.Aerial-App.AerialScreenSaverExtension",
    "~/Library/Containers/com.glouel.Aerial-App.ScreenSaverExtension",
    "~/Library/HTTPStorages/com.glouel.Aerial-App",
    "~/Library/Logs/Aerial",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Preferences/com.glouel.Aerial-App.plist",
    "~/Library/Saved Application State/com.glouel.Aerial-App.savedState",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
