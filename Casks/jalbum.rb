cask 'jalbum' do
  version '17'
  sha256 'f8590170cbb0c08efd8319bd01e2256848fb79ce4094e320f2383118368f911d'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
