class Lastfm < Cask
  version :latest
  sha256 :no_check

  url 'http://www.lastfm.de/download/mac'
  appcast 'http://cdn.last.fm/client/Mac/updates.xml'
  homepage 'http://www.lastfm.com'
  license :unknown

  app 'Last.fm.app'
end
