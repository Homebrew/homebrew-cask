cask 'jalbum' do
  version '15.2'
  sha256 '78cee6a7ec389d49e3b2dfa3b4c80a51e45058481c344482f3e3ccbd96403d43'

  url "http://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  name 'jAlbum'
  homepage 'http://jalbum.net/'

  app 'jAlbum.app'
end
