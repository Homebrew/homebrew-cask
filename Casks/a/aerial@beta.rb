cask "aerial@beta" do
  version "4.0.9"
  sha256 "754c2d08297a768a53d847fc8f7d93e7a930cfbcf7b4cc97a688289e40921322"

  url "https://github.com/AerialScreensaver/Aerial/releases/download/v#{version}/Aerial-#{version}.zip",
      verified: "github.com/AerialScreensaver/Aerial/"
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
  depends_on macos: :sequoia

  app "Aerial.app"

  uninstall quit: "com.glouel.Aerial-App"

  zap trash: [
    "/Users/Shared/Aerial",
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/com.glouel.Aerial-App",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Containers/com.glouel.Aerial-App",
    "~/Library/Containers/com.glouel.Aerial-App.ScreenSaverExtension",
    "~/Library/HTTPStorages/com.glouel.Aerial-App",
    "~/Library/Logs/Aerial",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Preferences/com.glouel.Aerial-App.plist",
    "~/Library/Saved Application State/com.glouel.Aerial-App.savedState",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
