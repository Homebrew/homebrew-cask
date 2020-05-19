cask 'jalbum' do
  version '20.1.0'
  sha256 '643a96cc60b8d6b9497283270a6230c1602eb1e574e6a2aa4d7a95293be84ecd'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
