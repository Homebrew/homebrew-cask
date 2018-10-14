cask 'jalbum' do
  version '16.2'
  sha256 'ec29c95a501bc95e20202face3d4e3d52f8a84badf6c966391120951b80ab5dd'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
