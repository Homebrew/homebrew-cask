cask 'jalbum' do
  version '19.2'
  sha256 '36f77b67de434d14b3845e13df03a89a4aba27c63dc54e09122322091e6cbcc0'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
