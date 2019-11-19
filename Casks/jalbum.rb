cask 'jalbum' do
  version '19.1'
  sha256 '5bbcecf853bf413d0a41a98205edc6e99b7db8a2a89f2f042a0cd780106f7325'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
