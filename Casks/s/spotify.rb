cask "spotify" do
  arch arm: "ARM64"

  on_sierra :or_older do
    version "1.1.89.862,94554d24"
    sha256 :no_check

    url "https://download.scdn.co/Spotify-10.11-12.dmg",
        verified: "download.scdn.co/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "1.2.20.1216,e7a7b92f"
    sha256 :no_check

    url "https://download.scdn.co/Spotify-10.13-14.dmg",
        verified: "download.scdn.co/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "1.2.20.1216,e7a7b92f"
    sha256 :no_check

    url "https://download.scdn.co/Spotify-10.13-14.dmg",
        verified: "download.scdn.co/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "1.2.37.701,e66eb7bc"
    sha256 :no_check

    url "https://download.scdn.co/Spotify-10.15.dmg",
        verified: "download.scdn.co/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.2.41.434,39a25e2c"
    sha256 :no_check

    url "https://download.scdn.co/Spotify#{arch}.dmg",
        verified: "download.scdn.co/"

    livecheck do
      url "https://www.spotify.com/opensource/"
      regex(/<tr.*?(\d+(?:\.\d+)+)[._-]g(\h+)/i)
      strategy :page_match do |page, regex|
        match = page.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  name "Spotify"
  desc "Music streaming service"
  homepage "https://www.spotify.com/"

  auto_updates true

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
