cask 'jalbum' do
  version '19.3'
  sha256 '30dad701def8b5477d0101668a7dd0b06ce015d43f5ae9fbe1cd40f6baea9f95'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
