cask 'mutespotifyads' do
  version '1.11.1'
  sha256 'cb5665cd9551c356921db2d1fdc8573d8fa3fd9132e529868d44ad54130462a7'

  url "https://github.com/simonmeusel/MuteSpotifyAds/releases/download/v#{version}/MuteSpotifyAds.app.zip"
  appcast 'https://github.com/simonmeusel/MuteSpotifyAds/releases.atom'
  name 'MuteSpotifyAds'
  homepage 'https://github.com/simonmeusel/MuteSpotifyAds'

  depends_on macos: '>= :sierra'

  app 'MuteSpotifyAds.app'

  zap trash: '~/Library/SyncedPreferences/de.simonmeusel.MuteSpotifyAds.plist'
end
