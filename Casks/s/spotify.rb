cask "spotify" do
  arch arm: "ARM64"

  sha256 :no_check

  on_arm do
    version "1.2.39.578,0ea3f38b,108"
  end
  on_intel do
    version "1.2.39.578,0ea3f38b,108"
  end

  url "https://download.scdn.co/Spotify#{arch}.dmg",
      verified: "download.scdn.co/"
  name "Spotify"
  desc "Music streaming service"
  homepage "https://www.spotify.com/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      match = items["com.spotify.client"].version.match(/^(\d+(?:\.\d+)+)[._-]g(\h+)[._-](\d+)$/i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Spotify.app"

  uninstall launchctl: [
              "com.spotify.client.startuphelper",
              "com.spotify.webhelper",
            ],
            quit:      "com.spotify.client"

  zap trash: [
    "~/Library/Application Support/Spotify",
    "~/Library/Caches/com.spotify.client",
    "~/Library/Caches/com.spotify.client.helper",
    "~/Library/Cookies/com.spotify.client.binarycookies",
    "~/Library/HTTPStorages/com.spotify.client",
    "~/Library/Logs/Spotify",
    "~/Library/Preferences/com.spotify.client.helper.plist",
    "~/Library/Preferences/com.spotify.client.plist",
    "~/Library/Saved Application State/com.spotify.client.savedState",
  ]
end
