cask :v1 => 'audiomate' do
  version '2.1.2'
  sha256 'c9cbd426d2d8f011f99250eac1bb76651f4c53c58a009edceca946b6179f1771'

  url "https://s3.amazonaws.com/apps-leftbee/products/downloadables/000/000/005/original/AudioMate-v#{version}.dmg"
  homepage 'http://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'
end
