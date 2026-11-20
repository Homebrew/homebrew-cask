cask "plezy" do
  version "2.26.0"
  sha256 "0f58e9ff2d1025e35a6373655b91ec4429c1ff8faec28edf8b3934b51db04f0c"

  url "https://github.com/edde746/plezy/releases/download/#{version}/plezy-macos.dmg"
  name "Plezy"
  desc "Client for Plex, Jellyfin and Emby media servers"
  homepage "https://plezy.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Plezy.app"

  zap trash: [
    "~/Library/Application Support/com.edde746.plezy",
    "~/Library/Caches/com.edde746.plezy",
    "~/Library/Caches/SentryCrash/Plezy",
    "~/Library/HTTPStorages/com.edde746.plezy",
    "~/Library/Preferences/com.edde746.plezy.plist",
  ]
end
