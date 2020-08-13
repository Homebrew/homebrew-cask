cask "spotify" do
  version :latest
  sha256 :no_check

  # scdn.co/ was verified as official when first introduced to the cask
  url "https://download.scdn.co/Spotify.dmg"
  name "Spotify"
  homepage "https://www.spotify.com/"

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
