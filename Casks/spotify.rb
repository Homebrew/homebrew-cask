cask "spotify" do
  arch = Hardware::CPU.intel? ? "" : "ARM64"

  if Hardware::CPU.intel?
    version "1.1.71.560.gc21c3367,1.1.71.560.gc21c3367-40"
  else
    version "1.1.69.612.gb7409abc,1.1.69.612.gb7409abc-13"
  end

  sha256 :no_check

  url "https://download.scdn.co/Spotify#{arch}.dmg",
      verified: "download.scdn.co/"
  name "Spotify"
  desc "Music streaming service"
  homepage "https://www.spotify.com/"

  livecheck do
    url :url
    strategy :extract_plist
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
