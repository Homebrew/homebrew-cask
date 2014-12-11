cask :v1 => 'lastfm' do
  version :latest
  sha256 :no_check

  url 'http://www.lastfm.de/download/mac'
  appcast 'http://cdn.last.fm/client/Mac/updates.xml'
  homepage 'http://www.lastfm.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Last.fm.app'
end
