cask 'mutespotifyads' do
  version '1.10.0'
  sha256 '43fe60985ddcbd2019bf7ee7adb5a4ee2a286bf818d8a169781b1596fddc0879'

  url "https://github.com/simonmeusel/MuteSpotifyAds/releases/download/v#{version}/MuteSpotifyAds.app.zip"
  appcast 'https://github.com/simonmeusel/MuteSpotifyAds/releases.atom'
  name 'MuteSpotifyAds'
  homepage 'https://github.com/simonmeusel/MuteSpotifyAds'

  depends_on macos: '>= :sierra'

  app 'MuteSpotifyAds.app'

  zap trash: '~/Library/SyncedPreferences/de.simonmeusel.MuteSpotifyAds.plist'
end
