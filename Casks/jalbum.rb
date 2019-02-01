cask 'jalbum' do
  version '17.1.1'
  sha256 'b86144622f299f703d650555976b47bd149a1d2a8acdf3fcf378dda2e819bbd8'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
