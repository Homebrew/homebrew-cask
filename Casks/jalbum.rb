cask 'jalbum' do
  version '13.10'
  sha256 'ba6f5a4133ff630672760ac0bec1e22c489b4a45b46e6bfbdaf0dc25c2d2f196'

  url "http://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  name 'jAlbum'
  homepage 'http://jalbum.net/'

  app 'jAlbum.app'
end
