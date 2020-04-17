cask 'jalbum' do
  version '20.0.0'
  sha256 'ad5e8c3203d6c8b42fb279310ef512269e7b0b7be4ad0c29c5537f47ab077b78'

  url "https://download.jalbum.net/download/#{version.major}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
