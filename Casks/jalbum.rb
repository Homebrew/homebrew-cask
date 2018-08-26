cask 'jalbum' do
  version '16.2'
  sha256 'd1ea520fdcca69bd011cdd257eb815cc1e1043a579e1e1a9b07781b90f8b8871'

  url "http://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'http://jalbum.net/'

  app 'jAlbum.app'
end
