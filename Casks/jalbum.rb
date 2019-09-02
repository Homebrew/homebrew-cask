cask 'jalbum' do
  version '18.4.0'
  sha256 'f4f3558e7153ff443bc2209efcff8514fcb043b0a8e599bfc6bee80dab6a9f1f'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
