cask 'jalbum' do
  version '20.2.3'
  sha256 '91f60902b1df36744f3b86ef630dad95e8fd2f8fbaad1dcf441b21b3da2a9e78'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/release-notes',
          must_contain: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
