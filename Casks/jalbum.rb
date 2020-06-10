cask 'jalbum' do
  version '20.2.0'
  sha256 '42a5b95dbfc6b4e73a4c6598bd81f678a15c97c2426e603e125831ac4727986c'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
