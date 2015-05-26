cask :v1 => 'lastfm' do
  version '2.1.36'
  sha256 'd61d4947117080998937c0d63148caf693f1bed5ec768d86feeb3a86f84d1ff9'

  url "http://cdn.last.fm/client/Mac/Last.fm-#{version}.zip"
  appcast 'http://cdn.last.fm/client/Mac/updates.xml'
  name 'Last.fm Scrobbler'
  homepage 'http://www.last.fm/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Last.fm'

  app 'Last.fm.app'
end
