cask "aerial" do
  version "4.0.8"
  sha256 "0d9f3ec4a6e40d3f5fa7d0b1776d2f840fe97a0a1ff3fd5facd069cdea5c510a"

  url "https://github.com/AerialScreensaver/Aerial/releases/download/v#{version}/Aerial-#{version}.zip",
      verified: "github.com/AerialScreensaver/Aerial/"
  name "Aerial"
  desc "Apple TV Aerial screensaver, now as a full macOS app"
  homepage "https://aerialscreensaver.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "aerial@beta"
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

  caveats <<~EOS
    Aerial is now a full macOS app (was previously a .saver plug-in).

    Launch Aerial.app once after install — it will install its bundled
    screen saver extension and migrate settings from any previous .saver
    install. Then enable "Aerial" in System Settings → Screen Saver
    (or set it as a wallpaper).

    Requires macOS Sequoia (15) or later.
  EOS
end
