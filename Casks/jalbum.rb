cask 'jalbum' do
  version '18'
  sha256 'a723b974fd6d838a5dad1aae74490cf4af951c74472201f9dfe5961e403e26ed'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
