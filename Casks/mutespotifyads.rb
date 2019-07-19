cask 'mutespotifyads' do
  version '1.8.3'
  sha256 'e38399aafeb2ff161d03f876daa0b5391f71162cd3f9f9d22b362c67a70f8703'

  url "https://github.com/simonmeusel/MuteSpotifyAds/releases/download/v#{version}/MuteSpotifyAds.app.zip"
  appcast 'https://github.com/simonmeusel/MuteSpotifyAds/releases.atom'
  name 'MuteSpotifyAds'
  homepage 'https://github.com/simonmeusel/MuteSpotifyAds'

  auto_updates false

  app 'MuteSpotifyAds.app'

  zap trash: '~/Library/SyncedPreferences/de.simonmeusel.MuteSpotifyAds.plist'

  caveats 'You have to manually grant this application accessibility access in the System Prefrences. A dialogue will automatically redirect you to the correct settings page.'
end
