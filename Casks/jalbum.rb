cask 'jalbum' do
  version '20.0.0'
  sha256 '115e3ab0d02564a9a59f25d25a16cfebd2344e2e71843d558575685a10a376c3'

  url "https://download.jalbum.net/download/#{version.major}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
