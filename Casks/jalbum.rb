cask 'jalbum' do
  version '20.2.0'
  sha256 '100791791e20a0f6b20a35661e2b75c0eba88b7f36a23b5d7684789175a09fc1'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
