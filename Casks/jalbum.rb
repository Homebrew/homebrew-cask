cask 'jalbum' do
  version '20.0.0'
  sha256 '4c2ee25138bda78479601cd4d1e7ebfd6227967adb4b09876f46d209017a94c3'

  url "https://download.jalbum.net/download/#{version.major}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous',
          configuration: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
