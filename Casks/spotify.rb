cask "spotify" do
  arch = Hardware::CPU.intel? ? "" : "ARM64"

  if Hardware::CPU.intel?
    version "1.1.81.604,ccacfc8c,16"
  else
    version "1.1.80.699,gc3dac750,7"
  end

  sha256 :no_check

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
  depends_on macos: ">= :el_capitan"

  app "Spotify.app"

  uninstall quit:      "com.spotify.client",
            launchctl: "com.spotify.webhelper"

  zap trash: [
    "~/Library/Application Support/Spotify",
    "~/Library/Caches/com.spotify.client.helper",
    "~/Library/Caches/com.spotify.client",
    "~/Library/Cookies/com.spotify.client.binarycookies",
    "~/Library/HTTPStorages/com.spotify.client",
    "~/Library/Logs/Spotify",
    "~/Library/Preferences/com.spotify.client.helper.plist",
    "~/Library/Preferences/com.spotify.client.plist",
    "~/Library/Saved Application State/com.spotify.client.savedState",
  ]
end
