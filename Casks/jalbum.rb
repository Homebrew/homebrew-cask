cask 'jalbum' do
  version '18.2.1'
  sha256 'fb7ad297a51c8418485f13afa4e42b9f6e950828ef86148644bc17a6913a9400'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
