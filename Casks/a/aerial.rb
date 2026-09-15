cask "aerial" do
  on_sequoia do
    version "4.0.16"
    sha256 "33a6b4008b9e4b6271daf0d450363fdbddb452fd3836ff81966ba5fa80ccbfe9"

    livecheck do
      url :url
      regex(/^v?(4\.0(?:\.\d+)+)$/i)
    end
  end
  on_tahoe :or_newer do
    version "4.1.0"
    sha256 "d81dd29d7240e41cb51067946949487a306e63c80375437da6ce5a439de1e2e2"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  url "https://github.com/AerialScreensaver/Aerial/releases/download/v#{version}/Aerial-#{version}.zip"
  name "Aerial"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  auto_updates true
  conflicts_with cask: "aerial@beta"
  depends_on macos: :sequoia

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
