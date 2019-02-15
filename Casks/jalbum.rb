cask 'jalbum' do
  version '18.0.3'
  sha256 '84547e6ea152b8ae90b92bfc757a117e47694688c43199aaab311a85041ee9dc'

  url "https://download.jalbum.net/download/#{version.major}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
