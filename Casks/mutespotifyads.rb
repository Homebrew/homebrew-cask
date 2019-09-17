cask 'mutespotifyads' do
  version '1.11.0'
  sha256 '56ba27f5ab292fbba8db7ff0e643cd9edf1b60ea24ac3724b6a047c2b73a8db8'

  url "https://github.com/simonmeusel/MuteSpotifyAds/releases/download/v#{version}/MuteSpotifyAds.app.zip"
  appcast 'https://github.com/simonmeusel/MuteSpotifyAds/releases.atom'
  name 'MuteSpotifyAds'
  homepage 'https://github.com/simonmeusel/MuteSpotifyAds'

  depends_on macos: '>= :sierra'

  app 'MuteSpotifyAds.app'

  zap trash: '~/Library/SyncedPreferences/de.simonmeusel.MuteSpotifyAds.plist'
end
