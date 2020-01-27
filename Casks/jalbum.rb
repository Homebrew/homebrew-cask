cask 'jalbum' do
  version '19.3'
  sha256 '674bff94bda00a88725fb2f51f1038b07031e19af405584457b09df1892d30bd'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
