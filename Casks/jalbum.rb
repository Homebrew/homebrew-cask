cask 'jalbum' do
  version '19.2'
  sha256 '105453e67cb80beea7a9e9432773326506814fc22eba2b69ef4ce7a8aadb8664'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
