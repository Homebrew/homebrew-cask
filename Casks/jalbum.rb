cask 'jalbum' do
  version '19.0.0'
  sha256 '865064c3df9b4845c2c7d57a26b862a51ce3b66debf8edc85a692fc351a2f6ac'

  url "https://download.jalbum.net/download/#{version.major}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
