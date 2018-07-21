cask 'notify' do
  version '0.2.3'
  sha256 '5c2fe95e781076f5f237f1d168aad1abc0634c3ce6bb730ae4c7543b00f80b03'

  # github.com/nahive/spotify-notify/releases/download/ was verified as official when first introduced to the cask.
  url "https://github.com/nahive/spotify-notify/releases/download/#{version}/Notify-#{version}.dmg"
  appcast 'https://github.com/nahive/spotify-notify/releases.atom'
  name 'Spotify Notify'
  homepage 'http://nahive.github.io/projects/notify/'

  app 'Notify.app'

  zap trash: '~/Library/Preferences/io.nahive.SpotifyNotify.plist'
end
