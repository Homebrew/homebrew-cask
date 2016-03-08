cask 'lastfm' do
  version '2.1.36'
  sha256 'd61d4947117080998937c0d63148caf693f1bed5ec768d86feeb3a86f84d1ff9'

  url "http://cdn.last.fm/client/Mac/Last.fm-#{version}.zip"
  appcast 'http://cdn.last.fm/client/Mac/updates.xml',
          checkpoint: '6cc2826bd38f16b11c2c2d2d2b5011c19bb9b99e274aed42c1ed70edf242caf5'
  name 'Last.fm Scrobbler'
  homepage 'http://www.last.fm/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Last.fm.app'
end
