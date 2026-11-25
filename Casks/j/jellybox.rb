cask "jellybox" do
  version "2.13.0"
  sha256 "0e7515cff2910f491b15dcd592782fddc1bcb767e9bed5c5340b9f05e3c1b472"

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
