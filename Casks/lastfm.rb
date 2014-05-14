class Lastfm < Cask
  url 'http://www.lastfm.de/download/mac'
  appcast 'http://cdn.last.fm/client/Mac/updates.xml'
  homepage 'http://www.lastfm.com'
  version 'latest'
  sha256 :no_check
  link 'Last.fm.app'
end
