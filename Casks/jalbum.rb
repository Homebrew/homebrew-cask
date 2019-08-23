cask 'jalbum' do
  version '18.3.1'
  sha256 '0bdb2e6c64d7996cd15ef58687c109b5627f6c2b2a3b18910c4d9215df51f5b1'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
