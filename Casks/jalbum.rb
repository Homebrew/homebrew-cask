cask 'jalbum' do
  version '19.3.6'
  sha256 'd6ed48947e5735f4ab137259ad0f9dd0b38b463999494fd3d9eda5576bf50071'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
