cask 'mutespotifyads' do
  version '1.9.0'
  sha256 '0c4ad1494d57278780adf56fb07e7229edc18e768bb6704662210a26ab95ecaa'

  url "https://github.com/simonmeusel/MuteSpotifyAds/releases/download/v#{version}/MuteSpotifyAds.app.zip"
  appcast 'https://github.com/simonmeusel/MuteSpotifyAds/releases.atom'
  name 'MuteSpotifyAds'
  homepage 'https://github.com/simonmeusel/MuteSpotifyAds'

  depends_on macos: '>= :sierra'

  app 'MuteSpotifyAds.app'

  zap trash: '~/Library/SyncedPreferences/de.simonmeusel.MuteSpotifyAds.plist'
end
