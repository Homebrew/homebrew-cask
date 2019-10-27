cask 'jalbum' do
  version '19.1'
  sha256 '0038c2cd01757058d2f3e7e03f11cc937a580ac8bbc70af0653eb08036890dd9'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
