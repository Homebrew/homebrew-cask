cask 'lastfm' do
  version '2.1.36'
  sha256 'd61d4947117080998937c0d63148caf693f1bed5ec768d86feeb3a86f84d1ff9'

  url "http://cdn.last.fm/client/Mac/Last.fm-#{version}.zip"
  appcast 'http://cdn.last.fm/client/Mac/updates.xml',
          :sha256 => '5ce3a6697f1c24a83e632ad5d9d00e4a5613d3ba713d0bec58531feb0bf75dd3'
  name 'Last.fm Scrobbler'
  homepage 'http://www.last.fm/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Last.fm.app'
end
