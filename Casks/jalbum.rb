cask 'jalbum' do
  version '19.3.6'
  sha256 '36453c2ddfc8e20b9fd0bb0d80182aa241b68d976680d00b56d6a71e45834dde'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
