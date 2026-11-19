cask "aerial@beta" do
  version "4.1.12"
  sha256 "94d16205d82f8dd7664b15bdac606401667900195a9872b2207a23d56ee0994f"

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
