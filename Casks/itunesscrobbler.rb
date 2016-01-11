cask 'itunesscrobbler' do
  version '0.6.0'
  sha256 '01dcacb1738e824d853dab7825cee88b017f47a65f8e22fdbd7bf762802cc893'

  url "http://www.easyclasspage.de/lastfm/files/iTunesScrobbler_#{version.delete('.')}.zip"
  name 'iTunesScrobbler'
  homepage 'http://www.easyclasspage.de/lastfm/seite-19.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iTunesScrobbler.app'
end
