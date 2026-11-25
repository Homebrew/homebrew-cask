cask "jellybox" do
  version "2.12.0"
  sha256 "28c55573e5e8cc322fe13cb51e23a16f64b0c322b66f67a2c187a5c907ce0a82"

  url "https://github.com/avdept/JellyBoxPlayer/releases/download/v#{version}/JellyBox-notarized.dmg"
  name "JellyBox"
  desc "Music player for Jellyfin, Navidrome and Emby servers"
  homepage "https://jellybox.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "JellyBox.app"

  zap trash: [
    "~/Library/Application Support/com.prodigytech.jellybox",
    "~/Library/Caches/com.prodigytech.jellybox",
    "~/Library/HTTPStorages/com.prodigytech.jellybox",
    "~/Library/Preferences/com.prodigytech.jellybox.plist",
    "~/Library/Saved Application State/com.prodigytech.jellybox.savedState",
  ]
end
