cask "mutespotifyads" do
  version "1.11.2"
  sha256 "8285a957ee67918f0ca08b50e183717a89ec689b502155b08acb6cd913eb9dff"

  url "https://github.com/simonmeusel/MuteSpotifyAds/releases/download/v#{version}/MuteSpotifyAds.app.zip"
  name "MuteSpotifyAds"
  homepage "https://github.com/simonmeusel/MuteSpotifyAds"

  disable! date: "2024-12-16", because: :discontinued

  depends_on macos: ">= :sierra"

  app "MuteSpotifyAds.app"

  zap trash: "~/Library/SyncedPreferences/de.simonmeusel.MuteSpotifyAds.plist"
end
