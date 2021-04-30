cask "spotify" do
  version "1.1.58.820.g2ae50076,1.1.58.820.g2ae50076-37"
  sha256 :no_check

  url "https://download.scdn.co/Spotify.dmg",
      verified: "scdn.co/"
  name "Spotify"
  desc "Music streaming service"
  homepage "https://www.spotify.com/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "Spotify.app"

  uninstall launchctl: "com.spotify.webhelper"

  zap trash: [
    "~/Library/Application Support/Spotify",
    "~/Library/Caches/com.spotify.client",
    "~/Library/Caches/com.spotify.client.helper",
    "~/Library/Cookies/com.spotify.client.binarycookies",
    "~/Library/Logs/Spotify",
    "~/Library/Preferences/com.spotify.client.plist",
    "~/Library/Preferences/com.spotify.client.helper.plist",
    "~/Library/Saved Application State/com.spotify.client.savedState",
  ]
end
