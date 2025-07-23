cask "aerial@beta" do
  version "3.5.2beta6"
  sha256 "f5f8de11a73d444a1f60d34addaa26b0715ab288f60d614742055a8408217b26"

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
