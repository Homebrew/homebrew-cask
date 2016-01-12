cask 'lastfm' do
  version '2.1.36'
  sha256 'd61d4947117080998937c0d63148caf693f1bed5ec768d86feeb3a86f84d1ff9'

  url "http://cdn.last.fm/client/Mac/Last.fm-#{version}.zip"
  appcast 'http://cdn.last.fm/client/Mac/updates.xml',
          :sha256 => 'e29be4df68a4aad3b28f91a9dbc01097227597ba1b9c5129ee3795eb2c49d2e4'
  name 'Last.fm Scrobbler'
  homepage 'http://www.last.fm/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Last.fm.app'
end
